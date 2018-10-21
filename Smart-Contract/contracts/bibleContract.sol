pragma solidity ^0.4.0;
contract bibleContract {

    struct BibleVerse {
        string book_id;
        string book_name;
        uint chapter;
        uint verse;
        string hash;
    }

    BibleVerse[] _bibleVerses;


    constructor () public {

        BibleVerse memory new_verse;


        // verse 1
        new_verse.book_id = "JHN";
        new_verse.book_name = "John";
        new_verse.chapter = 3;
        new_verse.verse = 16;
        new_verse.hash = "326af03defe53773e97b7cf4098322b5d13a3638";

        _bibleVerses.push(new_verse);


        // verse 3
        new_verse.book_id = "ROM";
        new_verse.book_name = "Romans";
        new_verse.chapter = 12;
        new_verse.verse = 1;
        new_verse.hash = "6bafeb03a59f2637a949d86b99c6fbb509505717";

        _bibleVerses.push(new_verse);

        // verse 4
        new_verse.book_id = "ROM";
        new_verse.book_name = "Romans";
        new_verse.chapter = 12;
        new_verse.verse = 2;
        new_verse.hash = "22b99bc26d6199e9077503ed1edc7ef819acd148";

        _bibleVerses.push(new_verse);

        // verse 5
        new_verse.book_id = "GEN";
        new_verse.book_name = "Genesis";
        new_verse.chapter = 3;
        new_verse.verse = 16;
        new_verse.hash = "f99ef4039d0f7e2973cddfd13dc29cbafa3ecc36";

        _bibleVerses.push(new_verse);


        // verse 6
        new_verse.book_id = "PSA";
        new_verse.book_name = "Psalms";
        new_verse.chapter = 120;
        new_verse.verse = 2;
        new_verse.hash = "169d512a435ca88df386e5387a95bc43f71dfb21";

        _bibleVerses.push(new_verse);

        // verse 6
        new_verse.book_id = "HEB";
        new_verse.book_name = "Hebrews";
        new_verse.chapter = 12;
        new_verse.verse = 2;
        new_verse.hash = "a9813a858747069757cdaa32edc76c19cd193fc2";

        _bibleVerses.push(new_verse);


    }


    function getVerse(string book_name, uint chapter, uint verse ) public constant returns (string) {

        for (uint i=0; i<_bibleVerses.length; i++) {
            if( keccak256(_bibleVerses[i].book_name) == keccak256(book_name) && _bibleVerses[i].chapter == chapter && _bibleVerses[i].verse == verse){
                return _bibleVerses[i].hash;
            }
            return "Not found";
        }
    }


}
