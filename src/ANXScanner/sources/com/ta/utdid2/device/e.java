package com.ta.utdid2.device;

import com.ta.utdid2.b.a.a;
import com.ta.utdid2.b.a.b;
import com.ta.utdid2.b.a.i;

/* compiled from: UTUtdidHelper2 */
public class e {
    private String p;

    public e() {
        this.p = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
        this.p = b.encodeToString(this.p.getBytes(), 0);
    }

    public String b(String str) {
        return a.e(this.p, str);
    }

    public String c(String str) {
        String e = a.e(this.p, str);
        if (i.a(e)) {
            return null;
        }
        try {
            return new String(b.decode(e, 0));
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }
}
