package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.List;

public final class AddressBookAUResultParser extends ResultParser {
    public AddressBookParsedResult parse(Result result) {
        String rawText = ResultParser.getMassagedText(result);
        if (rawText.contains("MEMORY")) {
            if (rawText.contains("\r\n")) {
                return new AddressBookParsedResult(ResultParser.maybeWrap(ResultParser.matchSinglePrefixedField("NAME1:", rawText, 13, true)), null, ResultParser.matchSinglePrefixedField("NAME2:", rawText, 13, true), matchMultipleValuePrefix("TEL", 3, rawText, true), null, matchMultipleValuePrefix("MAIL", 3, rawText, true), null, null, ResultParser.matchSinglePrefixedField("MEMORY:", rawText, 13, false), ResultParser.matchSinglePrefixedField("ADD:", rawText, 13, true) == null ? null : new String[]{ResultParser.matchSinglePrefixedField("ADD:", rawText, 13, true)}, null, null, null, null, null, null);
            }
        }
        return null;
    }

    private static String[] matchMultipleValuePrefix(String prefix, int max, String rawText, boolean trim) {
        List<String> values = null;
        for (int i = 1; i <= max; i++) {
            String value = ResultParser.matchSinglePrefixedField(new StringBuilder(String.valueOf(prefix)).append(i).append(':').toString(), rawText, 13, trim);
            if (value == null) {
                break;
            }
            if (values == null) {
                values = new ArrayList(max);
            }
            values.add(value);
        }
        if (values == null) {
            return null;
        }
        return (String[]) values.toArray(new String[values.size()]);
    }
}
