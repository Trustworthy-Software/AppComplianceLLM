.class Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;
.super Ljava/lang/Object;
.source "AdvancedTlsX509KeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/AdvancedTlsX509KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateResult"
.end annotation


# instance fields
.field certTime:J

.field keyTime:J

.field success:Z


# direct methods
.method public constructor <init>(ZJJ)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "keyTime"    # J
    .param p4, "certTime"    # J

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-boolean p1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;->success:Z

    .line 206
    iput-wide p2, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;->keyTime:J

    .line 207
    iput-wide p4, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;->certTime:J

    .line 208
    return-void
.end method
