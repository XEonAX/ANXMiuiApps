.class public Lcom/alibaba/mtl/appmonitor/model/Measure;
.super Ljava/lang/Object;
.source "Measure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Double;

.field protected b:Ljava/lang/Double;

.field protected c:Ljava/lang/Double;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/Measure$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/Measure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "constantValue"    # Ljava/lang/Double;

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "constantValue"    # Ljava/lang/Double;
    .param p3, "min"    # Ljava/lang/Double;
    .param p4, "max"    # Ljava/lang/Double;

    .prologue
    const-wide/16 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    .line 42
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    .line 43
    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    .line 44
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    .line 45
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    .line 46
    return-void
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v0

    .line 148
    :goto_0
    if-nez v3, :cond_5

    .line 149
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v4, v3

    .line 152
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    .line 153
    :goto_2
    if-nez v3, :cond_4

    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 156
    :goto_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_2

    .line 160
    :goto_4
    if-nez v0, :cond_3

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    .line 163
    :goto_5
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_6
    return-object v0

    :cond_0
    move v3, v2

    .line 146
    goto :goto_0

    :cond_1
    move v3, v2

    .line 152
    goto :goto_2

    :cond_2
    move v0, v2

    .line 157
    goto :goto_4

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_6

    :cond_3
    move-object v2, v1

    goto :goto_5

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    move-object v4, v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 108
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 98
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 103
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 104
    iget-object v2, p1, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public getConstantValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public getMax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public getMin()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    .line 90
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 91
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setConstantValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "constantValue"    # Ljava/lang/Double;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    .line 79
    return-void
.end method

.method public setMax(Ljava/lang/Double;)V
    .locals 0
    .param p1, "max"    # Ljava/lang/Double;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    .line 67
    return-void
.end method

.method public setMin(Ljava/lang/Double;)V
    .locals 0
    .param p1, "min"    # Ljava/lang/Double;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    .line 59
    return-void
.end method

.method public setRange(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .param p1, "min"    # Ljava/lang/Double;
    .param p2, "max"    # Ljava/lang/Double;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    .line 50
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    .line 51
    return-void
.end method

.method public valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)Z
    .locals 6
    .param p1, "measureValue"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    if-nez v2, :cond_3

    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->b:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    if-nez v2, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->a:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Measure;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v1

    .line 122
    goto :goto_0

    :cond_4
    move v2, v1

    .line 127
    goto :goto_1

    :cond_5
    move v0, v1

    .line 134
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    goto :goto_3
.end method
