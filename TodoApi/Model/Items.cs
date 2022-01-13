using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace TodoApi.Models
{

	public class Items
	{
		private int tckn;
		private string isim;
		private string soyisim;
		private int yas;

		public int Tckn
		{
			get { return this.tckn; }
			set { this.tckn = value; }
		}
		public string Isim
		{
			get { return this.isim; }
			set { this.isim = value; }
		}
		public string Soyisim
		{
			get { return this.soyisim; }
			set { this.soyisim = value; }
		}

		public int Yas
		{
			get { return this.yas; }
			set { this.yas = value; }
		}
		public Items()
		{
			this.Tckn = tckn;
			this.Isim = isim;
			this.Soyisim = soyisim;
		}
	}

}
