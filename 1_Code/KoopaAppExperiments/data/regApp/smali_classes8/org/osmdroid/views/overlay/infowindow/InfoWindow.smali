.class public abstract Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
.super Ljava/lang/Object;
.source "InfoWindow.java"


# instance fields
.field protected mIsVisible:Z

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPosition:Lorg/osmdroid/util/GeoPoint;

.field protected mRelatedObject:Ljava/lang/Object;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 4
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    .line 53
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getRepository()Lorg/osmdroid/views/MapViewRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/MapViewRepository;->add(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    .line 55
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 56
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 57
    .local v2, "context":Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 58
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v3, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    .line 59
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    .line 65
    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public static closeAllInfoWindowsOn(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p0, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 188
    invoke-static {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getOpenedInfoWindowsOn(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    .local v0, "opened":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/infowindow/InfoWindow;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 190
    .local v2, "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 191
    .end local v2    # "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public static getOpenedInfoWindowsOn(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/views/overlay/infowindow/InfoWindow;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getChildCount()I

    move-result v0

    .line 202
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v1, "opened":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/infowindow/InfoWindow;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 204
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 205
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 206
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v5, :cond_0

    .line 207
    move-object v5, v4

    check-cast v5, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 208
    .local v5, "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    .end local v5    # "infoWindow":Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    .line 160
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onClose()V

    .line 163
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 8

    .line 137
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    :try_start_0
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mPosition:Lorg/osmdroid/util/GeoPoint;

    const/16 v5, 0x8

    iget v6, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mOffsetX:I

    iget v7, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mOffsetY:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    .line 145
    .local v0, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lorg/osmdroid/views/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/osmdroid/views/drawing/MapSnapshot;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 148
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    throw v0
.end method

.method public getMapView()Lorg/osmdroid/views/MapView;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public getRelatedObject()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mRelatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    return v0
.end method

.method public abstract onClose()V
.end method

.method public onDetach()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 170
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    :cond_0
    iput-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    .line 173
    iput-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    .line 174
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "OsmDroid"

    const-string v1, "Marked detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    return-void
.end method

.method public abstract onOpen(Ljava/lang/Object;)V
.end method

.method public open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .line 112
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 113
    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mRelatedObject:Ljava/lang/Object;

    .line 114
    iput-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mPosition:Lorg/osmdroid/util/GeoPoint;

    .line 115
    iput p3, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mOffsetX:I

    .line 116
    iput p4, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mOffsetY:I

    .line 117
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onOpen(Ljava/lang/Object;)V

    .line 118
    new-instance v7, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mPosition:Lorg/osmdroid/util/GeoPoint;

    const/16 v4, 0x8

    iget v5, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mOffsetX:I

    iget v6, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mOffsetY:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    .line 124
    .local v0, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v1, v2, v0}, Lorg/osmdroid/views/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    goto :goto_2

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error trapped, InfoWindow.open mMapView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    const-string v3, "null"

    const-string v4, "ok"

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_2
    return-void
.end method

.method public setRelatedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "relatedObject"    # Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mRelatedObject:Ljava/lang/Object;

    .line 75
    return-void
.end method
