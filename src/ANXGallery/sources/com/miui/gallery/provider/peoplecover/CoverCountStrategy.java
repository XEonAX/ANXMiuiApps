package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import java.util.ArrayList;

public class CoverCountStrategy extends BaseStrategy {
    public CoverCountStrategy(int weight) {
        super(weight);
    }

    public boolean isValid(Cursor cursor) {
        if (cursor == null) {
            return false;
        }
        ArrayList list = NormalPeopleFaceMediaSet.getBrothers(cursor.getString(9));
        if ((list == null ? 0 : list.size()) <= 3) {
            return true;
        }
        return false;
    }
}
