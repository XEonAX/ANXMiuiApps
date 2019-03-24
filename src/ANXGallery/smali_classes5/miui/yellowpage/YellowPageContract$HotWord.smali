.class public interface abstract Lmiui/yellowpage/YellowPageContract$HotWord;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HotWord"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "hotword"

.field public static final UPDATE_SUFFIX:Ljava/lang/String; = "update"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 589
    const-string v0, "content://miui.yellowpage//hotword"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$HotWord;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
