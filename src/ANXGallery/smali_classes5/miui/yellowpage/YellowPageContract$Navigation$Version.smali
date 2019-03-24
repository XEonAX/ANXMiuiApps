.class public interface abstract Lmiui/yellowpage/YellowPageContract$Navigation$Version;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract$Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Version"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "navigation/version"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 452
    const-string v0, "content://miui.yellowpage/navigation/version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$Navigation$Version;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
