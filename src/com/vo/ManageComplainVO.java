package com.vo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ComplainTable")

public class ManageComplainVO {

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int id;

		@Column
		private String complainName;
		
		@Column 
		private String complainDescription;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getComplainName() {
			return complainName;
		}

		public void setComplainName(String complainName) {
			this.complainName = complainName;
		}

		public String getComplainDescription() {
			return complainDescription;
		}

		public void setComplainDescription(String complainDescription) {
			this.complainDescription = complainDescription;
		}

}
