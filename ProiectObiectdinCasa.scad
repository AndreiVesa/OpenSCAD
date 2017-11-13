$fn=70;
cylinder(h=0.2, r=8, center=true);
module cup(inaltime_cupa, raza_cupa, inaltime_doi_cupa, raza_doi_cupa){
  translate([3.7,3.7,0.1]){
     cylinder(h=inaltime_cupa, r=raza_cupa); 
     difference(){      
     cylinder(h=inaltime_doi_cupa, r=raza_doi_cupa);
     cylinder(h=inaltime_doi_cupa, r=raza_cupa);      
  }
 }
}
cup(inaltime_cupa=1, raza_cupa=2.3,inaltime_doi_cupa=6.5, raza_doi_cupa=2.5);
//------------------

module sugar(raza_sfera,inaltime_cub,lungime_cub, latime_cub,inaltime_cilindru, raza_cilindru){
  translate([-3,-3,0.1]){
    union(){ 
      translate([0,0,1.3]) 
      sphere(r=raza_sfera); 
      intersection(){ 
      cube([inaltime_cub,lungime_cub,latime_cub], center=true);
      cylinder(h=inaltime_cilindru, r=raza_cilindru);   
   }
  }
 }
}
sugar(raza_sfera=0.5,inaltime_cub=2,lungime_cub=4, latime_cub=2.5,inaltime_cilindru=4, raza_cilindru=2);
//------------------

module straw(inaltime_cld, raza_cld, raza_doi_cld){
    translate([4,3,6]){
      difference(){
 	    rotate ([15,0,20]) 
        cylinder (h = inaltime_cld, r=raza_cld, center = true, $fn=100);
        rotate ([15,0,20])
        cylinder (h = inaltime_cld, r=raza_doi_cld, center = true, $fn=100);
  }      
 }
}
straw(inaltime_cld=8, raza_cld=0.2, raza_doi_cld=0.16);