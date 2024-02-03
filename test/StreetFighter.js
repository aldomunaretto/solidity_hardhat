const { expect } = require("chai");
const { assert } = require("chai");

describe("StreetFighter", function () {

    before (async function () {
        this.StreetFighter = await ethers.getContractFactory("StreetFighter");

        const [owner, addr1, addr2] = await ethers.getSigners();

        this.owner = owner;
        this.account1 = addr1;
        this.account2 = addr2;
    });

    beforeEach(async function () {
        this.streetFighter = await this.StreetFighter.deploy();
    });

    it("Is Deployed", async function () {
       assert.isTrue(this.StreetFighter != undefined)
    });

    it("Check Life", async function () {
        let life1 = await this.streetFighter.getLife(this.account1);
        let life2 = await this.streetFighter.getLife(this.account2);

        assert.equal(life1.toString(), "0", "There's no life setted");
        assert.equal(life2.toString(), "0", "There's no life setted");
    
    });

    it("Check Start", async function () {
    
    });

    it("Check Hits", async function () {

    }); 
});
