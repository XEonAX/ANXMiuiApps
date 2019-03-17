.class Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario$1;
.super Ljava/lang/Object;
.source "RecentMemoryScenario.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;->onPrepare(Ljava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario$1;->this$0:Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario$1;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario$1;->this$0:Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/scenario/time/guarantee/RecentMemoryScenario;->getMediaIdsFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
