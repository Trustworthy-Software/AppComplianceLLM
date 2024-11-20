.class public final Lio/grpc/okhttp/internal/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_PERM_REDIRECT:I = 0x134

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lio/grpc/okhttp/internal/Protocol;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/internal/Protocol;ILjava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Lio/grpc/okhttp/internal/Protocol;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/grpc/okhttp/internal/StatusLine;->protocol:Lio/grpc/okhttp/internal/Protocol;

    .line 22
    iput p2, p0, Lio/grpc/okhttp/internal/StatusLine;->code:I

    .line 23
    iput-object p3, p0, Lio/grpc/okhttp/internal/StatusLine;->message:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lio/grpc/okhttp/internal/StatusLine;
    .locals 8
    .param p0, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const-string v0, "HTTP/1."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x20

    const-string v2, "Unexpected status line: "

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 37
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 38
    .local v0, "httpMinorVersion":I
    const/16 v3, 0x9

    .line 39
    .local v3, "codeStart":I
    if-nez v0, :cond_0

    .line 40
    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    .local v4, "protocol":Lio/grpc/okhttp/internal/Protocol;
    goto :goto_0

    .line 41
    .end local v4    # "protocol":Lio/grpc/okhttp/internal/Protocol;
    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 42
    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_1:Lio/grpc/okhttp/internal/Protocol;

    .line 46
    .end local v0    # "httpMinorVersion":I
    .restart local v4    # "protocol":Lio/grpc/okhttp/internal/Protocol;
    :goto_0
    goto :goto_1

    .line 44
    .end local v4    # "protocol":Lio/grpc/okhttp/internal/Protocol;
    .restart local v0    # "httpMinorVersion":I
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    .end local v0    # "httpMinorVersion":I
    .end local v3    # "codeStart":I
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3
    const-string v0, "ICY "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    .line 49
    .restart local v4    # "protocol":Lio/grpc/okhttp/internal/Protocol;
    const/4 v3, 0x4

    .line 55
    .restart local v3    # "codeStart":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v5, v3, 0x3

    if-lt v0, v5, :cond_6

    .line 60
    add-int/lit8 v0, v3, 0x3

    :try_start_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, "code":I
    nop

    .line 67
    const-string v5, ""

    .line 68
    .local v5, "message":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v3, 0x3

    if-le v6, v7, :cond_5

    .line 69
    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_4

    .line 72
    add-int/lit8 v1, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 70
    :cond_4
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_5
    :goto_2
    new-instance v1, Lio/grpc/okhttp/internal/StatusLine;

    invoke-direct {v1, v4, v0, v5}, Lio/grpc/okhttp/internal/StatusLine;-><init>(Lio/grpc/okhttp/internal/Protocol;ILjava/lang/String;)V

    return-object v1

    .line 61
    .end local v0    # "code":I
    .end local v5    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    .end local v3    # "codeStart":I
    .end local v4    # "protocol":Lio/grpc/okhttp/internal/Protocol;
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/grpc/okhttp/internal/StatusLine;->protocol:Lio/grpc/okhttp/internal/Protocol;

    sget-object v2, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    if-ne v1, v2, :cond_0

    const-string v1, "HTTP/1.0"

    goto :goto_0

    :cond_0
    const-string v1, "HTTP/1.1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/grpc/okhttp/internal/StatusLine;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    iget-object v2, p0, Lio/grpc/okhttp/internal/StatusLine;->message:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/internal/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
