package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry;
import android.support.v4.content.res.FontResourcesParserCompat.FontFileResourceEntry;
import android.support.v4.provider.FontsContractCompat.FontInfo;
import com.alibaba.wireless.security.SecExceptionCode;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

@RequiresApi(14)
@RestrictTo({Scope.LIBRARY_GROUP})
class TypefaceCompatBaseImpl implements TypefaceCompatImpl {
    private static final String CACHE_FILE_PREFIX = "cached_font_";
    private static final String TAG = "TypefaceCompatBaseImpl";

    private interface StyleExtractor<T> {
        int getWeight(T t);

        boolean isItalic(T t);
    }

    TypefaceCompatBaseImpl() {
    }

    private static <T> T findBestFont(T[] fonts, int style, StyleExtractor<T> extractor) {
        boolean isTargetItalic;
        int targetWeight = (style & 1) == 0 ? 400 : SecExceptionCode.SEC_ERROR_STA_KEY_ENC;
        if ((style & 2) != 0) {
            isTargetItalic = true;
        } else {
            isTargetItalic = false;
        }
        T best = null;
        int bestScore = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (T font : fonts) {
            int i;
            int abs = Math.abs(extractor.getWeight(font) - targetWeight) * 2;
            if (extractor.isItalic(font) == isTargetItalic) {
                i = 0;
            } else {
                i = 1;
            }
            int score = abs + i;
            if (best == null || bestScore > score) {
                best = font;
                bestScore = score;
            }
        }
        return best;
    }

    protected FontInfo findBestInfo(FontInfo[] fonts, int style) {
        return (FontInfo) findBestFont(fonts, style, new StyleExtractor<FontInfo>() {
            public int getWeight(FontInfo info) {
                return info.getWeight();
            }

            public boolean isItalic(FontInfo info) {
                return info.isItalic();
            }
        });
    }

    protected Typeface createFromInputStream(Context context, InputStream is) {
        Typeface typeface = null;
        File tmpFile = TypefaceCompatUtil.getTempFile(context);
        if (tmpFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tmpFile, is)) {
                    typeface = Typeface.createFromFile(tmpFile.getPath());
                    tmpFile.delete();
                }
            } catch (RuntimeException e) {
            } finally {
                tmpFile.delete();
            }
        }
        return typeface;
    }

    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontInfo[] fonts, int style) {
        Typeface typeface = null;
        if (fonts.length >= 1) {
            InputStream is = null;
            try {
                is = context.getContentResolver().openInputStream(findBestInfo(fonts, style).getUri());
                typeface = createFromInputStream(context, is);
            } catch (IOException e) {
            } finally {
                TypefaceCompatUtil.closeQuietly(is);
            }
        }
        return typeface;
    }

    private FontFileResourceEntry findBestEntry(FontFamilyFilesResourceEntry entry, int style) {
        return (FontFileResourceEntry) findBestFont(entry.getEntries(), style, new StyleExtractor<FontFileResourceEntry>() {
            public int getWeight(FontFileResourceEntry entry) {
                return entry.getWeight();
            }

            public boolean isItalic(FontFileResourceEntry entry) {
                return entry.isItalic();
            }
        });
    }

    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontFamilyFilesResourceEntry entry, Resources resources, int style) {
        FontFileResourceEntry best = findBestEntry(entry, style);
        if (best == null) {
            return null;
        }
        return TypefaceCompat.createFromResourcesFontFile(context, resources, best.getResourceId(), best.getFileName(), style);
    }

    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int id, String path, int style) {
        Typeface typeface = null;
        File tmpFile = TypefaceCompatUtil.getTempFile(context);
        if (tmpFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tmpFile, resources, id)) {
                    typeface = Typeface.createFromFile(tmpFile.getPath());
                    tmpFile.delete();
                }
            } catch (RuntimeException e) {
            } finally {
                tmpFile.delete();
            }
        }
        return typeface;
    }
}
