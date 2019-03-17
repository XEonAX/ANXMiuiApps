.class final Lcom/miui/gallery/util/PersistentResponseHelper$1;
.super Ljava/lang/Object;
.source "PersistentResponseHelper.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/PersistentResponseHelper;->saveAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$expireMillis:J

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$response:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$params:Ljava/util/Map;

    iput-object p3, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$response:Ljava/lang/String;

    iput-wide p4, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$expireMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$params:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$response:Ljava/lang/String;

    iget-wide v4, p0, Lcom/miui/gallery/util/PersistentResponseHelper$1;->val$expireMillis:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/miui/gallery/util/PersistentResponseHelper;->save(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
