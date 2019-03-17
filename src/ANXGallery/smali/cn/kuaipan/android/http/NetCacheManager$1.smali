.class Lcn/kuaipan/android/http/NetCacheManager$1;
.super Ljava/lang/Thread;
.source "NetCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/kuaipan/android/http/NetCacheManager;-><init>(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/kuaipan/android/http/NetCacheManager;

.field final synthetic val$folder:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/http/NetCacheManager;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcn/kuaipan/android/http/NetCacheManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/kuaipan/android/http/NetCacheManager$1;->this$0:Lcn/kuaipan/android/http/NetCacheManager;

    iput-object p2, p0, Lcn/kuaipan/android/http/NetCacheManager$1;->val$folder:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/kuaipan/android/http/NetCacheManager$1;->val$folder:Ljava/io/File;

    invoke-static {v0}, Lcn/kuaipan/android/utils/FileUtils;->deleteChildren(Ljava/io/File;)Z

    .line 58
    return-void
.end method
