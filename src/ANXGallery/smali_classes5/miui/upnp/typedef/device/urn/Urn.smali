.class public Lmiui/upnp/typedef/device/urn/Urn;
.super Ljava/lang/Object;
.source "Urn.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/typedef/device/urn/Urn$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/urn/Urn;",
            ">;"
        }
    .end annotation
.end field

.field private static final URN:Ljava/lang/String; = "urn"


# instance fields
.field private domain:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private type:Lmiui/upnp/typedef/device/urn/Urn$Type;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/Urn$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    iput-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    iput-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 230
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/urn/Urn;->readFromParcel(Landroid/os/Parcel;)V

    .line 231
    return-void
.end method

.method public static create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;F)Lmiui/upnp/typedef/device/urn/Urn;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "type"    # Lmiui/upnp/typedef/device/urn/Urn$Type;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "version"    # F

    .line 78
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lmiui/upnp/typedef/device/urn/Urn;->create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;I)Lmiui/upnp/typedef/device/urn/Urn;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "type"    # Lmiui/upnp/typedef/device/urn/Urn$Type;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "version"    # I

    .line 82
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lmiui/upnp/typedef/device/urn/Urn;->create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lmiui/upnp/typedef/device/urn/Urn$Type;Ljava/lang/String;Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "type"    # Lmiui/upnp/typedef/device/urn/Urn$Type;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/Urn;-><init>()V

    .line 69
    .local v0, "thiz":Lmiui/upnp/typedef/device/urn/Urn;
    iput-object p0, v0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    .line 70
    iput-object p1, v0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 71
    iput-object p2, v0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    .line 72
    iput-object p3, v0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    .line 74
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    .line 174
    .local v0, "ret":Z
    if-nez p1, :cond_0

    .line 175
    goto :goto_0

    .line 178
    :cond_0
    instance-of v1, p1, Lmiui/upnp/typedef/device/urn/Urn;

    if-nez v1, :cond_1

    .line 179
    goto :goto_0

    .line 182
    :cond_1
    move-object v1, p1

    check-cast v1, Lmiui/upnp/typedef/device/urn/Urn;

    .line 183
    .local v1, "other":Lmiui/upnp/typedef/device/urn/Urn;
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 184
    iget-object v2, v1, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 185
    return v3

    .line 187
    :cond_2
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 188
    return v3

    .line 191
    :cond_3
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    if-eq v2, v4, :cond_4

    .line 192
    return v3

    .line 195
    :cond_4
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 196
    iget-object v2, v1, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 197
    return v3

    .line 199
    :cond_5
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 200
    return v3

    .line 203
    :cond_6
    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    iget-object v4, v1, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 204
    return v3

    .line 207
    :cond_7
    const/4 v0, 0x1

    .line 210
    .end local v1    # "other":Lmiui/upnp/typedef/device/urn/Urn;
    :goto_0
    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1

    .line 123
    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 160
    const/16 v0, 0x1f

    .line 161
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 162
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 163
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget-object v4, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-virtual {v4}, Lmiui/upnp/typedef/device/urn/Urn$Type;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 164
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    .line 165
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int/2addr v2, v3

    iget-object v1, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_3
    add-int/2addr v2, v5

    .line 166
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 89
    .local v0, "ret":Z
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "a":[Ljava/lang/String;
    const/4 v2, 0x5

    array-length v3, v1

    if-eq v3, v2, :cond_0

    .line 91
    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "urn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    goto :goto_0

    .line 98
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    .line 99
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Lmiui/upnp/typedef/device/urn/Urn$Type;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn$Type;

    move-result-object v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 100
    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    .line 103
    const/4 v2, 0x4

    :try_start_0
    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 108
    const/4 v0, 0x1

    .end local v1    # "a":[Ljava/lang/String;
    goto :goto_0

    .line 104
    .restart local v1    # "a":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/NumberFormatException;
    nop

    .line 111
    .end local v1    # "a":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/upnp/typedef/device/urn/Urn;->parse(Ljava/lang/String;)Z

    .line 235
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setType(Lmiui/upnp/typedef/device/urn/Urn$Type;)V
    .locals 0
    .param p1, "type"    # Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 127
    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 128
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 148
    const-string v0, "%s:%s:%s:%s:%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "urn"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->domain:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->type:Lmiui/upnp/typedef/device/urn/Urn$Type;

    .line 151
    invoke-virtual {v2}, Lmiui/upnp/typedef/device/urn/Urn$Type;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->subType:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/upnp/typedef/device/urn/Urn;->version:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 148
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "string":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 244
    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/Urn;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return-void
.end method
