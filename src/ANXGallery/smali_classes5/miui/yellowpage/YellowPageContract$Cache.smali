.class public interface abstract Lmiui/yellowpage/YellowPageContract$Cache;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cache"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final CACHE_KEY:Ljava/lang/String; = "cache_key"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "cache"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final REMARK:Ljava/lang/String; = "remark"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 413
    const-string v0, "content://miui.yellowpage/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$Cache;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
