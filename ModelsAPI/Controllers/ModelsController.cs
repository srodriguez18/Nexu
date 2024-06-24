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
        /// <summary>
        /// Update Average Price for Model
        /// </summary>
        /// <param></param>
        /// <example>2</example>
        /// <returns></returns>

        public async Task<IActionResult> Put(int id, [FromBody] string body)
        {
            string averageString = JObject.Parse(body)["average_price"].ToString();
            if (int.TryParse(averageString, out int average))
            {
                var model = await _context.Models.Where(x => x.id == id).FirstOrDefaultAsync();
                if(model != null) { 
                    model.average_price = average;
                    await _context.SaveChangesAsync();
                    return Ok("Model Updated!");
                } else
                {
                    return BadRequest("Model not found");
                }
            }
            else
            {
                return BadRequest("Invalid value");
            }

        }
    }
}
