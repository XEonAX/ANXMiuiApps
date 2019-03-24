.class public interface abstract Lmiui/app/constants/ThemeManagerConstants;
.super Ljava/lang/Object;
.source "ThemeManagerConstants.java"


# static fields
.field public static final ACTION_CLEAR_THEME_RUNTIME_DATA:Ljava/lang/String; = "miui.intent.action.CLEAR_THEME_RUNTIME_DATA"

.field public static final ACTION_PICK_GADGET:Ljava/lang/String; = "miui.intent.action.PICK_GADGET"

.field public static final COMPONENT_CODE_ALARM:Ljava/lang/String; = "alarm"

.field public static final COMPONENT_CODE_ALARMSTYLE:Ljava/lang/String; = "alarmscreen"

.field public static final COMPONENT_CODE_AUDIO_EFFECT:Ljava/lang/String; = "audioeffect"

.field public static final COMPONENT_CODE_BOOT_ANIMATION:Ljava/lang/String; = "bootanimation"

.field public static final COMPONENT_CODE_BOOT_AUDIO:Ljava/lang/String; = "bootaudio"

.field public static final COMPONENT_CODE_CLOCK:Ljava/lang/String; = "clock_"

.field public static final COMPONENT_CODE_CLOCK_1x2:Ljava/lang/String; = "clock_1x2"

.field public static final COMPONENT_CODE_CLOCK_2x2:Ljava/lang/String; = "clock_2x2"

.field public static final COMPONENT_CODE_CLOCK_2x4:Ljava/lang/String; = "clock_2x4"

.field public static final COMPONENT_CODE_CLOCK_3x4:Ljava/lang/String; = "clock_3x4"

.field public static final COMPONENT_CODE_CONTACT:Ljava/lang/String; = "contact"

.field public static final COMPONENT_CODE_FONT:Ljava/lang/String; = "fonts"

.field public static final COMPONENT_CODE_FONT_FALLBACK:Ljava/lang/String; = "fonts_fallback"

.field public static final COMPONENT_CODE_FRAMEWORK:Ljava/lang/String; = "framework"

.field public static final COMPONENT_CODE_ICON:Ljava/lang/String; = "icons"

.field public static final COMPONENT_CODE_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final COMPONENT_CODE_LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final COMPONENT_CODE_LOCKSTYLE:Ljava/lang/String; = "lockstyle"

.field public static final COMPONENT_CODE_MASK:Ljava/lang/String; = "theme"

.field public static final COMPONENT_CODE_MIWALLPAPER:Ljava/lang/String; = "miwallpaper"

.field public static final COMPONENT_CODE_MMS:Ljava/lang/String; = "mms"

.field public static final COMPONENT_CODE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final COMPONENT_CODE_PHOTO_FRAME:Ljava/lang/String; = "photoframe_"

.field public static final COMPONENT_CODE_PHOTO_FRAME_2x2:Ljava/lang/String; = "photoframe_2x2"

.field public static final COMPONENT_CODE_PHOTO_FRAME_2x4:Ljava/lang/String; = "photoframe_2x4"

.field public static final COMPONENT_CODE_PHOTO_FRAME_4x4:Ljava/lang/String; = "photoframe_4x4"

.field public static final COMPONENT_CODE_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final COMPONENT_CODE_STATUSBAR:Ljava/lang/String; = "statusbar"

.field public static final COMPONENT_CODE_THIRD_APP:Ljava/lang/String; = "thirdapp"

.field public static final COMPONENT_CODE_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final DRM_WHITE_LIST:[Ljava/lang/String;

.field public static final GADGET_NAME_CLOCK:Ljava/lang/String; = "clock"

.field public static final GADGET_NAME_PHOTO_FRAME:Ljava/lang/String; = "photoframe"

.field public static final GADGET_SIZE_1x2:Ljava/lang/String; = "1x2"

.field public static final GADGET_SIZE_2x2:Ljava/lang/String; = "2x2"

.field public static final GADGET_SIZE_2x4:Ljava/lang/String; = "2x4"

.field public static final GADGET_SIZE_3x4:Ljava/lang/String; = "3x4"

.field public static final GADGET_SIZE_4x4:Ljava/lang/String; = "4x4"

.field public static final REQUEST_GADGET_NAME:Ljava/lang/String; = "REQUEST_GADGET_NAME"

.field public static final REQUEST_GADGET_SIZE:Ljava/lang/String; = "REQUEST_GADGET_SIZE"

.field public static final REQUEST_RESOURCE_CODE:Ljava/lang/String; = "REQUEST_RESOURCE_CODE"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 59
    const-string v0, "wallpaper"

    const-string v1, "lock_wallpaper"

    const-string v2, "miwallpaper_preview"

    const-string v3, "alarmringtone"

    const-string v4, "boots/bootaudio.mp3"

    const-string v5, "config.config"

    const-string v6, ".runtime"

    const-string v7, "ringtones"

    const-string v8, "rights"

    const-string v9, "compatibility-v8"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/app/constants/ThemeManagerConstants;->DRM_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method
