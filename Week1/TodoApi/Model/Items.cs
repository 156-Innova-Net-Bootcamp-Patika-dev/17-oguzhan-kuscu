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
		public string Name
		{
			get { return this.Name; }
			set { this.Name = value; }
		}
		public string Surname
		{
			get { return this.Surname; }
			set { this.Surname = value; }
		}

		public int Age
		{
			get { return this.Age; }
			set { this.Age = value; }
		}
		public Items()
		{
			this.Tckn = tckn;
			this.Name = Name;
			this.Surname = Surname;
			this.Age = Age;
		}
	}

}
