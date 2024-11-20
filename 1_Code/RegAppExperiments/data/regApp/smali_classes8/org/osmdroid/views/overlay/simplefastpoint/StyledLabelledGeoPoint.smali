.class public Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;
.super Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
.source "StyledLabelledGeoPoint.java"


# instance fields
.field mPointStyle:Landroid/graphics/Paint;

.field mTextStyle:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DD)V

    .line 17
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D

    .line 20
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDD)V

    .line 21
    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D
    .param p7, "aLabel"    # Ljava/lang/String;

    .line 24
    invoke-direct/range {p0 .. p7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D
    .param p7, "aLabel"    # Ljava/lang/String;
    .param p8, "pointStyle"    # Landroid/graphics/Paint;
    .param p9, "textStyle"    # Landroid/graphics/Paint;

    .line 46
    invoke-direct/range {p0 .. p7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    .line 47
    iput-object p8, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    .line 48
    iput-object p9, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    .line 49
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aLabel"    # Ljava/lang/String;

    .line 36
    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDLjava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aLabel"    # Ljava/lang/String;
    .param p6, "pointStyle"    # Landroid/graphics/Paint;
    .param p7, "textStyle"    # Landroid/graphics/Paint;

    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDLjava/lang/String;)V

    .line 41
    iput-object p6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    .line 42
    iput-object p7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0
    .param p1, "aLocation"    # Landroid/location/Location;

    .line 28
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Landroid/location/Location;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "aGeopoint"    # Lorg/osmdroid/util/GeoPoint;

    .line 32
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;)V
    .locals 0
    .param p1, "aLabelledGeopoint"    # Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    .line 52
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;)V

    .line 53
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

    .line 12
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;
    .locals 11

    .line 73
    new-instance v10, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getAltitude()D

    move-result-wide v5

    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mLabel:Ljava/lang/String;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    iget-object v9, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;-><init>(DDDLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-object v10
.end method

.method public getPointStyle()Landroid/graphics/Paint;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextStyle()Landroid/graphics/Paint;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setPointStyle(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "mPointStyle"    # Landroid/graphics/Paint;

    .line 60
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    .line 61
    return-void
.end method

.method public setTextStyle(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "mTextStyle"    # Landroid/graphics/Paint;

    .line 68
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    .line 69
    return-void
.end method
