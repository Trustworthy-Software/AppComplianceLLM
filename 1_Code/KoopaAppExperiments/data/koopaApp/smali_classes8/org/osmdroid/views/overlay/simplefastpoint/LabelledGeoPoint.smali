.class public Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
.super Lorg/osmdroid/util/GeoPoint;
.source "LabelledGeoPoint.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 19
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D

    .line 22
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 23
    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D
    .param p7, "aLabel"    # Ljava/lang/String;

    .line 26
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 27
    iput-object p7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aLabel"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 40
    iput-object p5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0
    .param p1, "aLocation"    # Landroid/location/Location;

    .line 31
    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->setLabel(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;

    .line 14
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "aGeopoint"    # Lorg/osmdroid/util/GeoPoint;

    .line 35
    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;)V
    .locals 8
    .param p1, "aLabelledGeopoint"    # Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    .line 44
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLongitude()D

    move-result-wide v3

    .line 45
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getAltitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 44
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
    .locals 9

    .line 58
    new-instance v8, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getAltitude()D

    move-result-wide v5

    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    return-object v8
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    invoke-super {p0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
