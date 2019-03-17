.class Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario$1;
.super Ljava/lang/Object;
.source "AnnualTravelsScenario.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario;->loadMediaItem()Ljava/util/List;
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
.field final synthetic this$0:Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario$1;->this$0:Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/annual/AnnualTravelsScenario$1;->handle(Landroid/database/Cursor;)Ljava/util/List;

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
    .line 43
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gallery/card/scenario/time/LocationScenario;->getMediaItemsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
