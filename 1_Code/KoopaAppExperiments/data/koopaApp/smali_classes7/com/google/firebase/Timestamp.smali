.class public final Lcom/google/firebase/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/Timestamp;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/Timestamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final nanoseconds:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/firebase/Timestamp$1;

    invoke-direct {v0}, Lcom/google/firebase/Timestamp$1;-><init>()V

    sput-object v0, Lcom/google/firebase/Timestamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1, "seconds"    # J
    .param p3, "nanoseconds"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1, p2, p3}, Lcom/google/firebase/Timestamp;->validateRange(JI)V

    .line 62
    iput-wide p1, p0, Lcom/google/firebase/Timestamp;->seconds:J

    .line 63
    iput p3, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/Timestamp;->seconds:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 74
    .local v0, "millis":J
    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 75
    .local v4, "seconds":J
    rem-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0xf4240

    mul-int/2addr v2, v3

    .line 76
    .local v2, "nanoseconds":I
    if-gez v2, :cond_0

    .line 77
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 78
    const v3, 0x3b9aca00

    add-int/2addr v2, v3

    .line 80
    :cond_0
    invoke-static {v4, v5, v2}, Lcom/google/firebase/Timestamp;->validateRange(JI)V

    .line 81
    iput-wide v4, p0, Lcom/google/firebase/Timestamp;->seconds:J

    .line 82
    iput v2, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    .line 83
    return-void
.end method

.method public static now()Lcom/google/firebase/Timestamp;
    .locals 2

    .line 88
    new-instance v0, Lcom/google/firebase/Timestamp;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method private static validateRange(JI)V
    .locals 7
    .param p0, "seconds"    # J
    .param p2, "nanoseconds"    # I

    .line 152
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Timestamp nanoseconds out of range: %s"

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    int-to-double v2, p2

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v2, v2, v5

    if-gez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const-wide v2, -0xe7791f700L

    cmp-long v2, p0, v2

    if-ltz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Timestamp seconds out of range: %s"

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    const-wide v2, 0x3afff44180L

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/Timestamp;)I
    .locals 5
    .param p1, "other"    # Lcom/google/firebase/Timestamp;

    .line 120
    iget-wide v0, p0, Lcom/google/firebase/Timestamp;->seconds:J

    iget-wide v2, p1, Lcom/google/firebase/Timestamp;->seconds:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 121
    iget v0, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    iget v1, p1, Lcom/google/firebase/Timestamp;->nanoseconds:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0

    .line 123
    :cond_0
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p0, p1}, Lcom/google/firebase/Timestamp;->compareTo(Lcom/google/firebase/Timestamp;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/Timestamp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 132
    return v2

    .line 134
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p0, v1}, Lcom/google/firebase/Timestamp;->compareTo(Lcom/google/firebase/Timestamp;)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getNanoseconds()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/google/firebase/Timestamp;->seconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 139
    const/16 v0, 0x25

    .line 140
    .local v0, "prime":I
    iget-wide v1, p0, Lcom/google/firebase/Timestamp;->seconds:J

    long-to-int v3, v1

    mul-int/2addr v3, v0

    .line 141
    .local v3, "result":I
    mul-int v4, v0, v3

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    long-to-int v1, v1

    add-int/2addr v4, v1

    .line 142
    .end local v3    # "result":I
    .local v4, "result":I
    mul-int v1, v0, v4

    iget v2, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    add-int/2addr v1, v2

    .line 143
    .end local v4    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toDate()Ljava/util/Date;
    .locals 5

    .line 104
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/firebase/Timestamp;->seconds:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    const v4, 0xf4240

    div-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timestamp(seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/Timestamp;->seconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nanoseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-wide v0, p0, Lcom/google/firebase/Timestamp;->seconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget v0, p0, Lcom/google/firebase/Timestamp;->nanoseconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
