.class Lcom/miui/gallery/search/core/source/server/ItemSuggestion;
.super Ljava/lang/Object;
.source "ItemSuggestion.java"


# instance fields
.field public extraInfo:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extraInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field public intentActionURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field public resultCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
