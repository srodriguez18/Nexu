using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ModelsAPI.Context;
using ModelsAPI.Entity;
using Newtonsoft.Json.Linq;
using System.Runtime;

namespace ModelsAPI.Controllers
{
    [ApiController]
    [Route("models")]
    public class ModelsController : ControllerBase
    {
        NexuContext _context;

        private readonly ILogger<BrandsController> _logger;

        public ModelsController(ILogger<BrandsController> logger, NexuContext context)
        {
            _logger = logger;
            _context = context;
        }

        [HttpGet]
        public async Task<List<Models>> Get([FromQuery] int greater, int lower)
        {
            return await _context.Models.Where(x=> ( greater == 0 || x.average_price >= greater) && (lower == 0 || x.average_price <= lower) ).ToListAsync();
        }

        [HttpPut]
        [Route("/{id}")]
        public async Task<string> Put(int id, [FromBody] string body)
        {
            string averageString = JObject.Parse(body)["average_price"].ToString();
            if (int.TryParse(averageString, out int average))
            {
                var model = await _context.Models.Where(x => x.id == id).FirstOrDefaultAsync();
                if(model != null) { 
                    model.average_price = average;
                    await _context.SaveChangesAsync();
                    return "Model Updated!";
                } else
                {
                    return "Model not found";
                }
            }
            else
            {
                return "Invalid value";
            }

        }
    }
}
