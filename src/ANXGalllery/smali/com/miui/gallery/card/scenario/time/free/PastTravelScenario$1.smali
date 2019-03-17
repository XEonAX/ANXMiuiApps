.class Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario$1;
.super Ljava/lang/Object;
.source "PastTravelScenario.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->onPrepare(Ljava/util/List;Ljava/util/List;)Z
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
        "Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario$1;->this$0:Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario$1;->handle(Landroid/database/Cursor;)Ljava/util/List;

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
            "Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gallery/card/scenario/time/LocationScenario;->getMediaItemsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
