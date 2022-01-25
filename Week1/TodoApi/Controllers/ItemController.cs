

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TodoApi.Models;


namespace TodoApi.Controllers
{

	[Route("api/[controller]")]
	[ApiController]
	public class ItemController : ControllerBase
	{

		// test için değişkenler tanımlandı
		public static List<Items> items = new List<Items>()
																						{

				new Items { Tckn = 1, Name = "Onur", Surname = "Kuşcu",   Age =24     },
				new Items { Tckn = 2, Name = "Oguzhan", Surname = "Kuşcu"     ,Age =24},
				new Items { Tckn = 3, Name = "Çiğdem", Surname = "Kuşcu"  ,Age =24    },
				new Items { Tckn = 4, Name = "Nuray", Surname = "Kuşcu "   , Age =24  },
				new Items { Tckn = 5, Name = "Mecit", Surname = "Kuşcu"     ,Age =24   }
																					 };
	

		//GetAll methodu 
		[HttpGet]
		public ActionResult<IEnumerable<Items>> GetAllItems()
		{

			return items;
		}

		//Tckn' ye göre filtrelemek için
		[HttpGet("{id}")]
		public ActionResult<Items> Get(int id)
		{
			// verilen id ye göre listeyi tarar
			var item = items.FirstOrDefault(x => x.Tckn == id);
			if (item == null)
			{
				return NotFound("Aranılan kisi bulunamadı");
			}
			return item;
		}

	
		[HttpPost]
		//İnsert işlemi yapılıyor.
		public IActionResult Post([FromBody] Items item)
		{
			items.Add(item);
			return StatusCode(StatusCodes.Status201Created);
		}



		
		[HttpPut("{id}")]
		// Güncelleme  işlemi yapılıyor
		public IActionResult Put(int id, [FromBody] Items item)
		{
			var currentItem = items.Where(x => x.Tckn == id).FirstOrDefault();

			if (currentItem != null)
			{
				currentItem.Name = item.Name;
				currentItem.Name = item.Name;


				return Ok("İslem Basarılı");
			}
			else
			{
				return NotFound("Kisi bulunamadı!");
			}
		}

		
		[HttpDelete("{id}")]
		//Delete işlemi yapılıyor.
		public ActionResult<Items> Delete(int id)
		{
			var item = items.FirstOrDefault(x => x.Tckn == id);
			if (item != null)
			{
				items.Remove(item);
				return Ok("İslem Basarılı");
			}
			else
			{
				return NotFound("Aradığınız kişi bulunamadı");
			}




		}


	}

}










