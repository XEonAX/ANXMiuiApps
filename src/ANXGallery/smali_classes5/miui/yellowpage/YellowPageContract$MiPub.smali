.class public interface abstract Lmiui/yellowpage/YellowPageContract$MiPub;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MiPub"
.end annotation


# static fields
.field public static final CONTENT_URI_SERVICE_NUMBER:Landroid/net/Uri;

.field public static final CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "service_number"

.field public static final DIRECTORY_YELLOWPAGE:Ljava/lang/String; = "yellowpage"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 571
    const-string v0, "content://miui.yellowpage/service_number"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_SERVICE_NUMBER:Landroid/net/Uri;

    .line 572
    const-string v0, "content://miui.yellowpage/yellowpage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

    return-void
.end method
