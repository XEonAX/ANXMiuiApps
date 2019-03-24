.class Lmiui/util/async/TaskThread$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/b;->a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Lf:Lmiui/util/async/TaskManager;

.field final synthetic Lg:Lmiui/util/async/Task;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmiui/util/async/TaskThread$1;->Lf:Lmiui/util/async/TaskManager;

    iput-object p2, p0, Lmiui/util/async/TaskThread$1;->Lg:Lmiui/util/async/Task;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lmiui/util/async/TaskThread$1;->Lf:Lmiui/util/async/TaskManager;

    iget-object v1, p0, Lmiui/util/async/TaskThread$1;->Lg:Lmiui/util/async/Task;

    invoke-static {v0, p0, v1}, Lmiui/util/async/b;->b(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    .line 56
    return-void
.end method
