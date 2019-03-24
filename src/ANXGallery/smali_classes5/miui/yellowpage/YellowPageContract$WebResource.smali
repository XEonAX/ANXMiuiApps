.class public interface abstract Lmiui/yellowpage/YellowPageContract$WebResource;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebResource"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "web_res"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 597
    const-string v0, "content://miui.yellowpage//web_res"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$WebResource;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
