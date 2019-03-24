.class public Lmiui/upnp/typedef/property/PropertyValue;
.super Ljava/lang/Object;
.source "PropertyValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/PropertyValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PropertyValue"


# instance fields
.field private volatile currentValue:Ljava/lang/Object;

.field private isChanged:Z

.field private isOldValueAvailable:Z

.field private volatile oldValue:Ljava/lang/Object;

.field private single:Z

.field private volatile valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lmiui/upnp/typedef/property/PropertyValue$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyValue$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/PropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    .line 20
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    .line 20
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    .line 149
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyValue;->readFromParcel(Landroid/os/Parcel;)V

    .line 150
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 30
    new-instance v0, Lmiui/upnp/typedef/property/PropertyValue;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyValue;-><init>()V

    .line 31
    .local v0, "thiz":Lmiui/upnp/typedef/property/PropertyValue;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 32
    iput-object p0, v0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    .line 33
    iput-boolean v1, v0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    .line 34
    return-object v0
.end method


# virtual methods
.method public addMultipleValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 129
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public cleanState()V
    .locals 1

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    .line 118
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    .line 113
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    return v0
.end method

.method public isMultiple()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOldValueAvailable()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    return v0
.end method

.method public isSingle()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 158
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 163
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    .line 166
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 167
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    goto :goto_3

    .line 175
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "n":I
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 177
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "v":Ljava/lang/Object;
    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v2    # "v":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_5
    :goto_3
    return-void
.end method

.method public setMultiple(Z)V
    .locals 1
    .param p1, "multiple"    # Z

    .line 50
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 51
    return-void
.end method

.method public setSingle(Z)V
    .locals 0
    .param p1, "single"    # Z

    .line 42
    iput-boolean p1, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 43
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v0, "PropertyValue"

    const-string v1, "value is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    .line 65
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const-string v1, "PropertyValue"

    const-string v2, "invalid: oldValue is %s, new value is %s (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 67
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 76
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    .line 77
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    iput-object v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    .line 86
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    .line 87
    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    .line 88
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    .line 90
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 196
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 209
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 218
    :cond_2
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    .local v0, "n":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 222
    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method
