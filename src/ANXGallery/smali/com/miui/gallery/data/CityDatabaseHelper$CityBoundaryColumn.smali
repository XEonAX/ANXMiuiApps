.class public Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;
.super Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;
.source "CityDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CityDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityBoundaryColumn"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columType"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
