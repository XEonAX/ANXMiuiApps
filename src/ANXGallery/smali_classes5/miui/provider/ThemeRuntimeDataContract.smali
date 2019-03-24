.class public Lmiui/provider/ThemeRuntimeDataContract;
.super Ljava/lang/Object;
.source "ThemeRuntimeDataContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ThemeRuntimeDataContract$Projection;
    }
.end annotation


# static fields
.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.android.thememanager.provider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.android.thememanager.provider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "content://com.android.thememanager.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ThemeRuntimeDataContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
