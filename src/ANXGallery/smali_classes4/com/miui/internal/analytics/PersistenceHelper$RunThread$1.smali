.class Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ao:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper$RunThread;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->ao:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread$1;->ao:Lcom/miui/internal/analytics/PersistenceHelper$RunThread;

    iget-object v0, v0, Lcom/miui/internal/analytics/PersistenceHelper$RunThread;->an:Lcom/miui/internal/analytics/PersistenceHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/internal/analytics/Event;

    invoke-static {v0, p1}, Lcom/miui/internal/analytics/PersistenceHelper;->a(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/Event;)V

    .line 94
    :goto_0
    return-void
.end method
