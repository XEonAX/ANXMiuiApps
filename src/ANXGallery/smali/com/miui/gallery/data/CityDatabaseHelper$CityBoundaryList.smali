.class public Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "CityDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/CityDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityBoundaryList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method
