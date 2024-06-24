using Backend.DTO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ModelsAPI.Context;
using ModelsAPI.Entity;
using Newtonsoft.Json.Linq;
using System.Runtime.CompilerServices;

namespace ModelsAPI.Controllers
{
    [ApiController]
    [Route("brands")]
    public class BrandsController : ControllerBase
    {
        NexuContext _context;

        private readonly ILogger<BrandsController> _logger;

        public BrandsController(ILogger<BrandsController> logger, NexuContext context)
        {
            _logger = logger;
            _context = context;
        }

        [HttpGet]
        public async Task<List<BrandAv>> Get()
        {
            try {

                var br = await _context.Brands.Select(x => x).ToListAsync();

                List<BrandAv> result = br.Select(x => new BrandAv() { id = (int)x.id, name = x.name, average_price = 0 }).ToList();

                foreach (var brand in result)
                {
                    var average = await _context.Models.Where(x => x.brand_id == brand.id).Select(x=>x.average_price).ToListAsync();
                    brand.average_price = average.Count > 0 ?  (int)average.Average() : 0;
                }

                return result;

                //return await (from b in _context.Brands
                //           join m in _context.Models on b.id equals m.brand_id into models
                //           from m in models.DefaultIfEmpty() // Left join
                //           group m.average_price by new { b.id, b.name } into g
                //           select new BrandAv
                //           {
                //               id = (int)g.Key.id,
                //               name = g.Key.name,
                //               average_price = (int)g.Average()
                //           }).ToListAsync();
            }
            catch (Exception)
            {
                throw;
            }
           
        }

        [HttpGet]
        [Route("{id}/models")]
        public async Task<List<Models>> Get(int id)
        {
            return await _context.Models.Where(x=> x.brand_id == id).ToListAsync();
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody] string body)
        {
            if(body == string.Empty)
                return BadRequest("Invalid Format, must be like: {\"name\": \"Toyota\"}");

            string brandString;

            try
            {
                brandString = JObject.Parse(body).GetValue("name")?.ToString() ?? "";

            }catch(Exception) { 
            
                return BadRequest("Invalid Format, must be like: {\"name\": \"Toyota\"}");
            }
            if (brandString == string.Empty)
                return BadRequest("Invalid Format, must be like: {\"name\": \"Toyota\"}");

            var brand = await _context.Brands.Where(x=>x.name == brandString).FirstOrDefaultAsync();

            if(brand == null)
            {
                brand = new Brands() { name = brandString };
                await _context.Brands.AddAsync(brand);
                await _context.SaveChangesAsync();
                return Ok();
            } else
            {
                return BadRequest("Brand already exists");
            }
        }

        [HttpPost]
        [Route("{id}/models")]
        public async Task<IActionResult> Post(int id, [FromBody] string body)
        {
            if (body == string.Empty)
                return BadRequest("Invalid Format, must be like: {\"name\": \"Prius\", \"average_price\": 406400} ");

            string brandString;
            try
            {
                brandString = JObject.Parse(body).GetValue("name")?.ToString() ?? "";

            }
            catch (Exception)
            {

                return BadRequest("Invalid Format, must be like: {\"name\": \"Prius\", \"average_price\": 406400}");
            }
            if (brandString == string.Empty)
                return BadRequest("Invalid Format, must be like: {\"name\": \"Prius\", \"average_price\": 406400}");

            var brand = await _context.Brands.Where(x => x.name == brandString).FirstOrDefaultAsync();

            if (brand == null)
            {
                brand = new Brands() { name = brandString };
                await _context.Brands.AddAsync(brand);
                await _context.SaveChangesAsync();
                return Ok();
            }
            else
            {
                return BadRequest("Brand already exists");
            }
        }
    }
}
