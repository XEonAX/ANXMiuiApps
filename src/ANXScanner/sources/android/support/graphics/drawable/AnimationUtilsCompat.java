package android.support.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.content.res.XmlResourceParser;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.view.animation.FastOutLinearInInterpolator;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({Scope.LIBRARY_GROUP})
public class AnimationUtilsCompat {
    public static Interpolator loadInterpolator(Context context, int id) throws NotFoundException {
        NotFoundException rnf;
        if (VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, id);
        }
        XmlResourceParser parser = null;
        Interpolator fastOutLinearInInterpolator;
        if (id == AndroidResources.FAST_OUT_LINEAR_IN) {
            try {
                fastOutLinearInInterpolator = new FastOutLinearInInterpolator();
                if (parser == null) {
                    return fastOutLinearInInterpolator;
                }
                parser.close();
                return fastOutLinearInInterpolator;
            } catch (XmlPullParserException ex) {
                rnf = new NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(id));
                rnf.initCause(ex);
                throw rnf;
            } catch (IOException ex2) {
                rnf = new NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(id));
                rnf.initCause(ex2);
                throw rnf;
            } catch (Throwable th) {
                if (parser != null) {
                    parser.close();
                }
            }
        } else if (id == AndroidResources.FAST_OUT_SLOW_IN) {
            fastOutLinearInInterpolator = new FastOutSlowInInterpolator();
            if (parser == null) {
                return fastOutLinearInInterpolator;
            }
            parser.close();
            return fastOutLinearInInterpolator;
        } else if (id == AndroidResources.LINEAR_OUT_SLOW_IN) {
            fastOutLinearInInterpolator = new LinearOutSlowInInterpolator();
            if (parser == null) {
                return fastOutLinearInInterpolator;
            }
            parser.close();
            return fastOutLinearInInterpolator;
        } else {
            parser = context.getResources().getAnimation(id);
            fastOutLinearInInterpolator = createInterpolatorFromXml(context, context.getResources(), context.getTheme(), parser);
            if (parser == null) {
                return fastOutLinearInInterpolator;
            }
            parser.close();
            return fastOutLinearInInterpolator;
        }
    }

    private static Interpolator createInterpolatorFromXml(Context context, Resources res, Theme theme, XmlPullParser parser) throws XmlPullParserException, IOException {
        Interpolator interpolator = null;
        int depth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if ((type != 3 || parser.getDepth() > depth) && type != 1) {
                if (type == 2) {
                    AttributeSet attrs = Xml.asAttributeSet(parser);
                    String name = parser.getName();
                    if (name.equals("linearInterpolator")) {
                        interpolator = new LinearInterpolator();
                    } else if (name.equals("accelerateInterpolator")) {
                        interpolator = new AccelerateInterpolator(context, attrs);
                    } else if (name.equals("decelerateInterpolator")) {
                        interpolator = new DecelerateInterpolator(context, attrs);
                    } else if (name.equals("accelerateDecelerateInterpolator")) {
                        interpolator = new AccelerateDecelerateInterpolator();
                    } else if (name.equals("cycleInterpolator")) {
                        interpolator = new CycleInterpolator(context, attrs);
                    } else if (name.equals("anticipateInterpolator")) {
                        interpolator = new AnticipateInterpolator(context, attrs);
                    } else if (name.equals("overshootInterpolator")) {
                        interpolator = new OvershootInterpolator(context, attrs);
                    } else if (name.equals("anticipateOvershootInterpolator")) {
                        interpolator = new AnticipateOvershootInterpolator(context, attrs);
                    } else if (name.equals("bounceInterpolator")) {
                        interpolator = new BounceInterpolator();
                    } else if (name.equals("pathInterpolator")) {
                        interpolator = new PathInterpolatorCompat(context, attrs, parser);
                    } else {
                        throw new RuntimeException("Unknown interpolator name: " + parser.getName());
                    }
                }
            }
        }
        return interpolator;
    }
}
