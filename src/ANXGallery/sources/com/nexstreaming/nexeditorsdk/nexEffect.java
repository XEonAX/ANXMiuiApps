package com.nexstreaming.nexeditorsdk;

import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.assetpackage.g;
import com.nexstreaming.app.common.nexasset.assetpackage.h;
import com.nexstreaming.app.common.nexasset.assetpackage.i;
import com.nexstreaming.app.common.util.c;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.ItemMethodType;
import com.nexstreaming.nexeditorsdk.nexEffectOptions.ColorOpt;
import com.nexstreaming.nexeditorsdk.nexEffectOptions.RangeOpt;
import com.nexstreaming.nexeditorsdk.nexEffectOptions.SelectOpt;
import com.nexstreaming.nexeditorsdk.nexEffectOptions.SwitchOpt;
import com.nexstreaming.nexeditorsdk.nexEffectOptions.TextOpt;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.keyczar.Keyczar;
import org.xmlpull.v1.XmlPullParserException;

public abstract class nexEffect {
    public static final int kEFFECT_CLIP_AUTO = 1;
    public static final int kEFFECT_CLIP_USER = 2;
    public static final int kEFFECT_NONE = 0;
    public static final int kEFFECT_OVERLAY_FILTER = 5;
    public static final int kEFFECT_TRANSITION_AUTO = 3;
    public static final int kEFFECT_TRANSITION_USER = 4;
    private static final int kMaxStringTrackCount = 8;
    ItemMethodType itemMethodType = ItemMethodType.ItemExtra;
    String mAutoID;
    int mDuration;
    String mID;
    boolean mIsResolveOptions = false;
    String mName;
    private b mObserver;
    boolean mOptionsUpdate;
    private String[] mTitles = null;
    int mType = 0;
    boolean mUpdated;
    HashMap<String, String> m_effectOptions;

    public int getType() {
        return this.mType;
    }

    public String getId() {
        if (this.mType == 0) {
            return "none";
        }
        if (this.mType == 1 || this.mType == 3) {
            if (this.mAutoID != null) {
                return this.mAutoID;
            }
            Log.d("nexEffect", "mType=" + this.mType + " mAutoID=null");
            return "none";
        } else if (this.mID != null) {
            return this.mID;
        } else {
            Log.d("nexEffect", "mType=" + this.mType + " mID=null");
            return "none";
        }
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void setDuration(int i) {
        if (this.mDuration != i) {
            this.mUpdated = true;
            setModified(false);
        }
        this.mDuration = i;
    }

    public void setEffectNone() {
        if (this.mType != 0) {
            this.mUpdated = true;
            this.mOptionsUpdate = false;
            setModified(false);
            resetOptions();
            this.mIsResolveOptions = false;
        }
        this.mType = 0;
    }

    boolean setEffect(String str, int i) {
        this.mType = i;
        if ((this.mID != null && str.compareTo(this.mID) == 0) || !isValidId(str)) {
            return false;
        }
        this.mUpdated = true;
        this.mID = str;
        this.mOptionsUpdate = false;
        resetOptions();
        this.mIsResolveOptions = false;
        return true;
    }

    void setModified(boolean z) {
        if (this.mObserver != null) {
            this.mObserver.updateTimeLine(z);
        }
    }

    void setObserver(b bVar) {
        this.mObserver = bVar;
    }

    boolean isValidId(String str) {
        return true;
    }

    public void setTitle(int i, String str) {
        if (this.mTitles == null) {
            this.mTitles = new String[8];
        }
        if (i < 8) {
            this.mTitles[i] = str;
        }
    }

    public String getTitle(int i) {
        if (this.mTitles != null && i < 8) {
            return this.mTitles[i];
        }
        return null;
    }

    String[] getTitles() {
        return this.mTitles;
    }

    private boolean isAllEmptyTitle() {
        if (this.mTitles == null) {
            return true;
        }
        for (int i = 0; i < 8; i++) {
            if (this.mTitles[i] != null) {
                return false;
            }
        }
        return true;
    }

    private static void encodeEffectOptions(StringBuilder stringBuilder, nexEffectOptions nexeffectoptions) {
        h a;
        Object obj = 1;
        try {
            a = i.a(a.a().b(), nexeffectoptions.getEffectID());
        } catch (XmlPullParserException e) {
            e.printStackTrace();
            a = null;
        } catch (IOException e2) {
            e2.printStackTrace();
            a = null;
        }
        if (a != null) {
            try {
                for (g gVar : a.a()) {
                    Object obj2;
                    if (obj != null) {
                        obj2 = null;
                    } else {
                        stringBuilder.append('&');
                        obj2 = obj;
                    }
                    if (gVar.a() == ItemParameterType.TEXT) {
                        for (TextOpt textOpt : nexeffectoptions.getTextOptions()) {
                            if (gVar.e().compareTo(textOpt.getId()) == 0 && textOpt.getText() != null) {
                                stringBuilder.append(URLEncoder.encode(textOpt.getId(), Keyczar.DEFAULT_ENCODING));
                                stringBuilder.append("=");
                                stringBuilder.append(URLEncoder.encode(textOpt.getText(), Keyczar.DEFAULT_ENCODING));
                            }
                        }
                    } else if (gVar.a() == ItemParameterType.RGBA || gVar.a() == ItemParameterType.RGB) {
                        if (nexeffectoptions != null) {
                            for (ColorOpt colorOpt : nexeffectoptions.getColorOptions()) {
                                if (gVar.e().compareTo(colorOpt.getId()) == 0) {
                                    stringBuilder.append(URLEncoder.encode(colorOpt.getId(), Keyczar.DEFAULT_ENCODING));
                                    stringBuilder.append("=");
                                    stringBuilder.append(URLEncoder.encode(c.a(colorOpt.getARGBformat()), Keyczar.DEFAULT_ENCODING));
                                }
                            }
                        }
                    } else if (gVar.a() == ItemParameterType.CHOICE) {
                        if (nexeffectoptions != null) {
                            for (SelectOpt selectOpt : nexeffectoptions.getSelectOptions()) {
                                if (gVar.e().compareTo(selectOpt.getId()) == 0) {
                                    stringBuilder.append(URLEncoder.encode(selectOpt.getId(), Keyczar.DEFAULT_ENCODING));
                                    stringBuilder.append("=");
                                    stringBuilder.append(URLEncoder.encode(selectOpt.getSelectValue(), Keyczar.DEFAULT_ENCODING));
                                }
                            }
                        }
                    } else if (gVar.a() == ItemParameterType.RANGE) {
                        if (nexeffectoptions != null) {
                            for (RangeOpt rangeOpt : nexeffectoptions.getRangeOptions()) {
                                if (gVar.e().compareTo(rangeOpt.getId()) == 0) {
                                    stringBuilder.append(URLEncoder.encode(rangeOpt.getId(), Keyczar.DEFAULT_ENCODING));
                                    stringBuilder.append("=");
                                    stringBuilder.append(URLEncoder.encode("" + rangeOpt.getValue(), Keyczar.DEFAULT_ENCODING));
                                }
                            }
                        }
                    } else if (gVar.a() == ItemParameterType.SWITCH && nexeffectoptions != null) {
                        for (SwitchOpt switchOpt : nexeffectoptions.getSwitchOptions()) {
                            if (gVar.e().compareTo(switchOpt.getId()) == 0) {
                                stringBuilder.append(URLEncoder.encode(switchOpt.getId(), Keyczar.DEFAULT_ENCODING));
                                stringBuilder.append("=");
                                if (switchOpt.getValue()) {
                                    stringBuilder.append(URLEncoder.encode(gVar.d(), Keyczar.DEFAULT_ENCODING));
                                } else {
                                    stringBuilder.append(URLEncoder.encode(gVar.c(), Keyczar.DEFAULT_ENCODING));
                                }
                            }
                        }
                    }
                    obj = obj2;
                }
            } catch (Throwable e3) {
                throw new IllegalStateException(e3);
            }
        }
    }

    public static String getTitleOptions(nexEffectOptions nexeffectoptions) {
        StringBuilder stringBuilder = new StringBuilder();
        if (nexeffectoptions.mEffectType == 5) {
            encodeEffectOptions(stringBuilder, nexeffectoptions);
        } else {
            stringBuilder.append(0);
            stringBuilder.append(',');
            stringBuilder.append(10000);
            stringBuilder.append('?');
            if (nexeffectoptions.mEffectType == 4 || nexeffectoptions.mEffectType == 3) {
                encodeEffectOptions(stringBuilder, nexeffectoptions);
            }
            stringBuilder.append('?');
            if (nexeffectoptions.mEffectType == 2 || nexeffectoptions.mEffectType == 1) {
                encodeEffectOptions(stringBuilder, nexeffectoptions);
            }
        }
        return stringBuilder.toString();
    }

    private void resetOptions() {
        if (this.m_effectOptions != null) {
            this.m_effectOptions.clear();
        }
    }

    public boolean updateEffectOptions(nexEffectOptions nexeffectoptions, boolean z) {
        if (this.m_effectOptions == null) {
            this.m_effectOptions = new HashMap();
        }
        if (nexeffectoptions.mEffectID.compareTo(this.mID) != 0) {
            return false;
        }
        String str;
        this.mOptionsUpdate = true;
        if (z) {
            this.m_effectOptions.clear();
        }
        List<TextOpt> textOptions = nexeffectoptions.getTextOptions();
        if (textOptions != null) {
            int i = 0;
            for (TextOpt textOpt : textOptions) {
                if (z) {
                    if (textOpt.getText() != null) {
                        setTitle(i, textOpt.getText());
                        this.m_effectOptions.put(textOpt.getId(), getTitle(i));
                    }
                } else if (getTitle(i) != null) {
                    textOpt.setText(getTitle(i));
                }
                i++;
            }
        }
        List<ColorOpt> colorOptions = nexeffectoptions.getColorOptions();
        if (colorOptions != null) {
            for (ColorOpt colorOpt : colorOptions) {
                if (!z) {
                    str = (String) this.m_effectOptions.get(colorOpt.getId());
                    if (str != null) {
                        colorOpt.argb_color = c.a(str);
                    }
                } else if (colorOpt.default_argb_color != colorOpt.argb_color) {
                    this.m_effectOptions.put(colorOpt.getId(), c.a(colorOpt.getARGBformat()));
                }
            }
        }
        List<SelectOpt> selectOptions = nexeffectoptions.getSelectOptions();
        if (selectOptions != null) {
            for (SelectOpt selectOpt : selectOptions) {
                if (!z) {
                    str = (String) this.m_effectOptions.get(selectOpt.getId());
                    if (str != null) {
                        selectOpt.setValue(str);
                    }
                } else if (selectOpt.default_select_index != selectOpt.select_index) {
                    this.m_effectOptions.put(selectOpt.getId(), selectOpt.getSelectValue());
                }
            }
        }
        List<RangeOpt> rangeOptions = nexeffectoptions.getRangeOptions();
        if (rangeOptions != null) {
            for (RangeOpt rangeOpt : rangeOptions) {
                if (!z) {
                    rangeOpt.setValue(Integer.parseInt((String) this.m_effectOptions.get(rangeOpt.getId())));
                } else if (rangeOpt.default_value != rangeOpt.mValue) {
                    this.m_effectOptions.put(rangeOpt.getId(), "" + rangeOpt.getValue());
                }
            }
        }
        List<SwitchOpt> switchOptions = nexeffectoptions.getSwitchOptions();
        if (switchOptions != null) {
            for (SwitchOpt switchOpt : switchOptions) {
                if (z) {
                    if (switchOpt.default_on != switchOpt.on) {
                        if (switchOpt.on) {
                            this.m_effectOptions.put(switchOpt.getId(), "on");
                        } else {
                            this.m_effectOptions.put(switchOpt.getId(), "off");
                        }
                    }
                } else if (((String) this.m_effectOptions.get(switchOpt.getId())).compareTo("on") == 0) {
                    switchOpt.setValue(true);
                } else {
                    switchOpt.setValue(false);
                }
            }
        }
        this.mIsResolveOptions = true;
        return true;
    }

    Map<String, String> getEffectOptions(String str) {
        if (this.m_effectOptions == null) {
            this.m_effectOptions = new HashMap();
        }
        if (this.mType == 1 || this.mType == 3) {
            this.m_effectOptions.clear();
        }
        if (str == null && isAllEmptyTitle()) {
            return this.m_effectOptions;
        }
        h a;
        try {
            a = i.a(a.a().b(), getId());
        } catch (XmlPullParserException e) {
            e.printStackTrace();
            a = null;
        } catch (IOException e2) {
            e2.printStackTrace();
            a = null;
        }
        if (a != null) {
            List a2 = a.a();
            int i = 0;
            Iterator it = a2.iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    break;
                }
                g gVar = (g) it.next();
                if (gVar.a() == ItemParameterType.TEXT) {
                    if (str != null) {
                        this.m_effectOptions.put(gVar.e(), str);
                    } else {
                        if (getTitle(i2) != null) {
                            this.m_effectOptions.put(gVar.e(), getTitle(i2));
                        }
                        i2++;
                    }
                }
                i = i2;
            }
        }
        return this.m_effectOptions;
    }

    int getTitleCount() {
        int i = 0;
        if (this.mTitles == null) {
            return 0;
        }
        int i2 = 0;
        while (i < this.mTitles.length) {
            if (!(this.mTitles[i] == null || this.mTitles[i].isEmpty())) {
                i2++;
            }
            i++;
        }
        return i2;
    }

    public ItemMethodType getMethodType() {
        if (this.itemMethodType == ItemMethodType.ItemExtra) {
            if (this.mID.compareToIgnoreCase("none") == 0) {
                this.itemMethodType = ItemMethodType.ItemKedl;
            } else {
                f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(this.mID);
                if (c != null) {
                    this.itemMethodType = nexAssetPackageManager.getMethodType(c.getType());
                }
            }
        }
        return this.itemMethodType;
    }
}
