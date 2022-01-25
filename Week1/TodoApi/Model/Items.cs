using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace TodoApi.Models
{

	public class Items
	{
		private int tckn;
		private string name;
		private string surname;
		private int age ;

		public int Tckn
		{
			get { return this.tckn; }
			set { this.tckn = value; }
		}
		public string Name
		{
			get { return this.name; }
			set { this.name = value; }
		}
		public string Surname
		{
			get { return this.surname; }
			set { this.surname = value; }
		}

		public int Age
		{
			get { return this.age; }
			set { this.age = value; }
		}
		public Items()
		{
			this.Tckn = tckn;
			this.Name = name;
			this.Surname = surname;
			this.Age = age;
		}
	}

}
