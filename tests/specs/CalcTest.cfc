component extends="testbox.system.BaseSpec" {

	function run(testResults, testBox) {
		
		describe("Test Addition", function() {
			it("Should be able to add two positive integers", function() {
                var calc = new services.calc();
                expect(calc.add(5,3)).toBe(8);
            });

            it("Should be able to add negative integers", function() {
                var calc = new services.calc();
                expect(calc.add(-6,3)).toBe(-3);
            });

            it("Should add zeros", function() {
                var calc = new services.calc();
                expect(calc.add(00,000)).toBe(0);
            });
        });
        
        describe("Test Strange Inputs", function() {
			it("Should not be able to add bacon + lettuce", function() {
                expect(function() {
                    var calc = new services.calc();
                    calc.add("bacon","lettuce");
                }).toThrow();
            });
		});
	}

}