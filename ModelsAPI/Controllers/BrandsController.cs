using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ModelsAPI.Context;
using ModelsAPI.Entity;

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
        public async Task<List<Brands>> Get()
        {
            return await _context.Brands.ToListAsync();
           
        }

        [HttpGet]
        [Route("{id}/models")]
        public async Task<List<Models>> Get(int id)
        {
            return await _context.Models.Where(x=> x.brand_id == id).ToListAsync();

        }
    }
}
