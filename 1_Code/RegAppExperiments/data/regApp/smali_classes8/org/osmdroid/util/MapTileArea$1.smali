.class Lorg/osmdroid/util/MapTileArea$1;
.super Ljava/lang/Object;
.source "MapTileArea.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/util/MapTileArea;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lorg/osmdroid/util/MapTileArea;


# direct methods
.method constructor <init>(Lorg/osmdroid/util/MapTileArea;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/util/MapTileArea;

    .line 88
    iput-object p1, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 94
    iget v0, p0, Lorg/osmdroid/util/MapTileArea$1;->mIndex:I

    iget-object v1, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-virtual {v1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Long;
    .locals 4

    .line 99
    invoke-virtual {p0}, Lorg/osmdroid/util/MapTileArea$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v0}, Lorg/osmdroid/util/MapTileArea;->access$000(Lorg/osmdroid/util/MapTileArea;)I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileArea$1;->mIndex:I

    iget-object v2, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v2}, Lorg/osmdroid/util/MapTileArea;->access$100(Lorg/osmdroid/util/MapTileArea;)I

    move-result v2

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 103
    .local v0, "x":I
    iget-object v1, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v1}, Lorg/osmdroid/util/MapTileArea;->access$200(Lorg/osmdroid/util/MapTileArea;)I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileArea$1;->mIndex:I

    iget-object v3, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v3}, Lorg/osmdroid/util/MapTileArea;->access$100(Lorg/osmdroid/util/MapTileArea;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 104
    .local v1, "y":I
    iget v2, p0, Lorg/osmdroid/util/MapTileArea$1;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/osmdroid/util/MapTileArea$1;->mIndex:I

    .line 105
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v2}, Lorg/osmdroid/util/MapTileArea;->access$300(Lorg/osmdroid/util/MapTileArea;)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 106
    iget-object v2, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v2}, Lorg/osmdroid/util/MapTileArea;->access$300(Lorg/osmdroid/util/MapTileArea;)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v2}, Lorg/osmdroid/util/MapTileArea;->access$300(Lorg/osmdroid/util/MapTileArea;)I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 109
    iget-object v2, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v2}, Lorg/osmdroid/util/MapTileArea;->access$300(Lorg/osmdroid/util/MapTileArea;)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 111
    :cond_2
    iget-object v2, p0, Lorg/osmdroid/util/MapTileArea$1;->this$0:Lorg/osmdroid/util/MapTileArea;

    invoke-static {v2}, Lorg/osmdroid/util/MapTileArea;->access$400(Lorg/osmdroid/util/MapTileArea;)I

    move-result v2

    invoke-static {v2, v0, v1}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/osmdroid/util/MapTileArea$1;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
