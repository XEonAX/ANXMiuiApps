package com.ta.utdid2.device;

import com.ta.utdid2.b.a.a;
import com.ta.utdid2.b.a.b;
import java.util.Random;

/* compiled from: UTUtdidHelper */
public class d {
    private static Random a = new Random();
    private String p;

    public d() {
        this.p = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
        this.p = b.encodeToString(this.p.getBytes(), 2);
    }

    public String c(byte[] bArr) {
        return a.d(this.p, b.encodeToString(bArr, 2));
    }

    public String a(String str) {
        return a.d(this.p, str);
    }

    public String b(String str) {
        return a.e(this.p, str);
    }
}
