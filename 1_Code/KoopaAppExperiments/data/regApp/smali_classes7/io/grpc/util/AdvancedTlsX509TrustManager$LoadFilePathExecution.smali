.class Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;
.super Ljava/lang/Object;
.source "AdvancedTlsX509TrustManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/AdvancedTlsX509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFilePathExecution"
.end annotation


# instance fields
.field currentTime:J

.field file:Ljava/io/File;

.field final synthetic this$0:Lio/grpc/util/AdvancedTlsX509TrustManager;


# direct methods
.method public constructor <init>(Lio/grpc/util/AdvancedTlsX509TrustManager;Ljava/io/File;)V
    .locals 2
    .param p2, "file"    # Ljava/io/File;

    .line 243
    iput-object p1, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;->this$0:Lio/grpc/util/AdvancedTlsX509TrustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;->file:Ljava/io/File;

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;->currentTime:J

    .line 246
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 251
    :try_start_0
    iget-object v0, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;->this$0:Lio/grpc/util/AdvancedTlsX509TrustManager;

    iget-object v1, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;->file:Ljava/io/File;

    iget-wide v2, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;->currentTime:J

    invoke-static {v0, v1, v2, v3}, Lio/grpc/util/AdvancedTlsX509TrustManager;->access$000(Lio/grpc/util/AdvancedTlsX509TrustManager;Ljava/io/File;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$LoadFilePathExecution;->currentTime:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_1

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lio/grpc/util/AdvancedTlsX509TrustManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed refreshing trust CAs from file. Using previous CAs"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
