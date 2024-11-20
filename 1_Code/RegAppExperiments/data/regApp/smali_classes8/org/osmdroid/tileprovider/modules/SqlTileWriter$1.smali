.class Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;
.super Ljava/lang/Object;
.source "SqlTileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/modules/SqlTileWriter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    .line 74
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;->this$0:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;->this$0:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->runCleanupOperation()V

    .line 78
    return-void
.end method
