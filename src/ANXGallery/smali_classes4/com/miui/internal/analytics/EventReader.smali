.class public Lcom/miui/internal/analytics/EventReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private R:Lcom/miui/internal/analytics/PersistenceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/EventReader;->R:Lcom/miui/internal/analytics/PersistenceHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/miui/internal/analytics/EventReader;->R:Lcom/miui/internal/analytics/PersistenceHelper;

    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/EventReader;->R:Lcom/miui/internal/analytics/PersistenceHelper;

    .line 23
    :cond_0
    return-void
.end method

.method public open(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-static {}, Lcom/miui/internal/analytics/PersistenceHelper;->getInstance()Lcom/miui/internal/analytics/PersistenceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/analytics/EventReader;->R:Lcom/miui/internal/analytics/PersistenceHelper;

    .line 17
    return-void
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/miui/internal/analytics/EventReader;->R:Lcom/miui/internal/analytics/PersistenceHelper;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/internal/analytics/EventReader;->R:Lcom/miui/internal/analytics/PersistenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/analytics/PersistenceHelper;->readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
