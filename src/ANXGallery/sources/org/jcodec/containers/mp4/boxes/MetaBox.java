package org.jcodec.containers.mp4.boxes;

import android.support.annotation.Keep;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

@Keep
public class MetaBox extends NodeBox {
    private static final String FOURCC = "meta";

    public MetaBox(Header atom) {
        super(atom);
    }

    public static MetaBox createMetaBox() {
        return new MetaBox(Header.createHeader(fourcc(), 0));
    }

    public Map<String, MetaValue> getKeyedMeta() {
        Map<String, MetaValue> result = new LinkedHashMap();
        IListBox ilst = (IListBox) NodeBox.findFirst(this, IListBox.class, IListBox.fourcc());
        MdtaBox[] keys = (MdtaBox[]) NodeBox.findAllPath(this, MdtaBox.class, new String[]{KeysBox.fourcc(), MdtaBox.fourcc()});
        if (!(ilst == null || keys.length == 0)) {
            for (Entry<Integer, List<Box>> entry : ilst.getValues().entrySet()) {
                Integer index = (Integer) entry.getKey();
                if (index != null) {
                    DataBox db = getDataBox((List) entry.getValue());
                    if (db != null) {
                        MetaValue value = MetaValue.createOtherWithLocale(db.getType(), db.getLocale(), db.getData());
                        if (index.intValue() > 0 && index.intValue() <= keys.length) {
                            result.put(keys[index.intValue() - 1].getKey(), value);
                        }
                    }
                }
            }
        }
        return result;
    }

    private DataBox getDataBox(List<Box> value) {
        for (Box box : value) {
            if (box instanceof DataBox) {
                return (DataBox) box;
            }
        }
        return null;
    }

    public void setKeyedMeta(Map<String, MetaValue> map) {
        if (!map.isEmpty()) {
            KeysBox keys = KeysBox.createKeysBox();
            Map<Integer, List<Box>> data = new LinkedHashMap();
            int i = 1;
            for (Entry<String, MetaValue> entry : map.entrySet()) {
                keys.add(MdtaBox.createMdtaBox((String) entry.getKey()));
                MetaValue v = (MetaValue) entry.getValue();
                List<Box> children = new ArrayList();
                children.add(DataBox.createDataBox(v.getType(), v.getLocale(), v.getData()));
                data.put(Integer.valueOf(i), children);
                i++;
            }
            IListBox ilst = IListBox.createIListBox(data);
            replaceBox(keys);
            replaceBox(ilst);
        }
    }

    public static String fourcc() {
        return FOURCC;
    }
}
