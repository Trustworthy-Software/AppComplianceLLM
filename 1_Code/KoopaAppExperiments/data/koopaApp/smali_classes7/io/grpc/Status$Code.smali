.class public final enum Lio/grpc/Status$Code;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/Status$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/Status$Code;

.field public static final enum ABORTED:Lio/grpc/Status$Code;

.field public static final enum ALREADY_EXISTS:Lio/grpc/Status$Code;

.field public static final enum CANCELLED:Lio/grpc/Status$Code;

.field public static final enum DATA_LOSS:Lio/grpc/Status$Code;

.field public static final enum DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

.field public static final enum FAILED_PRECONDITION:Lio/grpc/Status$Code;

.field public static final enum INTERNAL:Lio/grpc/Status$Code;

.field public static final enum INVALID_ARGUMENT:Lio/grpc/Status$Code;

.field public static final enum NOT_FOUND:Lio/grpc/Status$Code;

.field public static final enum OK:Lio/grpc/Status$Code;

.field public static final enum OUT_OF_RANGE:Lio/grpc/Status$Code;

.field public static final enum PERMISSION_DENIED:Lio/grpc/Status$Code;

.field public static final enum RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

.field public static final enum UNAUTHENTICATED:Lio/grpc/Status$Code;

.field public static final enum UNAVAILABLE:Lio/grpc/Status$Code;

.field public static final enum UNIMPLEMENTED:Lio/grpc/Status$Code;

.field public static final enum UNKNOWN:Lio/grpc/Status$Code;


# instance fields
.field private final value:I

.field private final valueAscii:[B


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 70
    new-instance v1, Lio/grpc/Status$Code;

    move-object v0, v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    .line 75
    new-instance v2, Lio/grpc/Status$Code;

    move-object v1, v2

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    .line 84
    new-instance v3, Lio/grpc/Status$Code;

    move-object v2, v3

    const-string v4, "UNKNOWN"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    .line 92
    new-instance v4, Lio/grpc/Status$Code;

    move-object v3, v4

    const-string v5, "INVALID_ARGUMENT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/Status$Code;->INVALID_ARGUMENT:Lio/grpc/Status$Code;

    .line 101
    new-instance v5, Lio/grpc/Status$Code;

    move-object v4, v5

    const-string v6, "DEADLINE_EXCEEDED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    .line 106
    new-instance v6, Lio/grpc/Status$Code;

    move-object v5, v6

    const-string v7, "NOT_FOUND"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/Status$Code;->NOT_FOUND:Lio/grpc/Status$Code;

    .line 111
    new-instance v7, Lio/grpc/Status$Code;

    move-object v6, v7

    const-string v8, "ALREADY_EXISTS"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    .line 121
    new-instance v8, Lio/grpc/Status$Code;

    move-object v7, v8

    const-string v9, "PERMISSION_DENIED"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    .line 127
    new-instance v9, Lio/grpc/Status$Code;

    move-object v8, v9

    const-string v10, "RESOURCE_EXHAUSTED"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    .line 146
    new-instance v10, Lio/grpc/Status$Code;

    move-object v9, v10

    const-string v11, "FAILED_PRECONDITION"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/Status$Code;->FAILED_PRECONDITION:Lio/grpc/Status$Code;

    .line 155
    new-instance v11, Lio/grpc/Status$Code;

    move-object v10, v11

    const-string v12, "ABORTED"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    .line 173
    new-instance v12, Lio/grpc/Status$Code;

    move-object v11, v12

    const-string v13, "OUT_OF_RANGE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/Status$Code;->OUT_OF_RANGE:Lio/grpc/Status$Code;

    .line 178
    new-instance v13, Lio/grpc/Status$Code;

    move-object v12, v13

    const-string v14, "UNIMPLEMENTED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    .line 185
    new-instance v14, Lio/grpc/Status$Code;

    move-object v13, v14

    const-string v15, "INTERNAL"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    .line 196
    new-instance v0, Lio/grpc/Status$Code;

    move-object v14, v0

    const-string v15, "UNAVAILABLE"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    .line 201
    new-instance v0, Lio/grpc/Status$Code;

    move-object v15, v0

    const-string v1, "DATA_LOSS"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->DATA_LOSS:Lio/grpc/Status$Code;

    .line 207
    new-instance v0, Lio/grpc/Status$Code;

    move-object/from16 v16, v0

    const-string v1, "UNAUTHENTICATED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lio/grpc/Status$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    .line 66
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lio/grpc/Status$Code;

    move-result-object v0

    sput-object v0, Lio/grpc/Status$Code;->$VALUES:[Lio/grpc/Status$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput p3, p0, Lio/grpc/Status$Code;->value:I

    .line 215
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lio/grpc/Status$Code;->valueAscii:[B

    .line 216
    return-void
.end method

.method static synthetic access$300(Lio/grpc/Status$Code;)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/Status$Code;

    .line 66
    invoke-direct {p0}, Lio/grpc/Status$Code;->valueAscii()[B

    move-result-object v0

    return-object v0
.end method

.method private valueAscii()[B
    .locals 1

    .line 233
    iget-object v0, p0, Lio/grpc/Status$Code;->valueAscii:[B

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/Status$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Lio/grpc/Status$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/grpc/Status$Code;

    return-object v0
.end method

.method public static values()[Lio/grpc/Status$Code;
    .locals 1

    .line 66
    sget-object v0, Lio/grpc/Status$Code;->$VALUES:[Lio/grpc/Status$Code;

    invoke-virtual {v0}, [Lio/grpc/Status$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/Status$Code;

    return-object v0
.end method


# virtual methods
.method public toStatus()Lio/grpc/Status;
    .locals 2

    .line 229
    invoke-static {}, Lio/grpc/Status;->access$000()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lio/grpc/Status$Code;->value:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 222
    iget v0, p0, Lio/grpc/Status$Code;->value:I

    return v0
.end method
