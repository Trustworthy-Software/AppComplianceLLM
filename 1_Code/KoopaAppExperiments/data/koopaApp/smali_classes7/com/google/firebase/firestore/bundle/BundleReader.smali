.class public Lcom/google/firebase/firestore/bundle/BundleReader;
.super Ljava/lang/Object;
.source "BundleReader.java"


# static fields
.field protected static final BUFFER_CAPACITY:I = 0x400

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final bundleInputStream:Ljava/io/InputStream;

.field bytesRead:J

.field private final dataReader:Ljava/io/InputStreamReader;

.field metadata:Lcom/google/firebase/firestore/bundle/BundleMetadata;

.field private final serializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/bundle/BundleReader;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/bundle/BundleSerializer;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "serializer"    # Lcom/google/firebase/firestore/bundle/BundleSerializer;
    .param p2, "bundleInputStream"    # Ljava/io/InputStream;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->serializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->bundleInputStream:Ljava/io/InputStream;

    .line 51
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->dataReader:Ljava/io/InputStreamReader;

    .line 52
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 55
    return-void
.end method

.method private abort(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->close()V

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeBundleElement(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/BundleElement;
    .locals 6
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "BundleElement"

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->serializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeBundleMetadata(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundleMetadata;

    move-result-object v1

    .line 217
    .local v1, "metadata":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    const-string v2, "BundleMetadata element loaded"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    return-object v1

    .line 219
    .end local v1    # "metadata":Lcom/google/firebase/firestore/bundle/BundleMetadata;
    :cond_0
    const-string v1, "namedQuery"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->serializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeNamedQuery(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/NamedQuery;

    move-result-object v1

    .line 221
    .local v1, "namedQuery":Lcom/google/firebase/firestore/bundle/NamedQuery;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query loaded: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-object v1

    .line 223
    .end local v1    # "namedQuery":Lcom/google/firebase/firestore/bundle/NamedQuery;
    :cond_1
    const-string v1, "documentMetadata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->serializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

    .line 225
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeBundledDocumentMetadata(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;

    move-result-object v1

    .line 226
    .local v1, "documentMetadata":Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document metadata loaded: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    return-object v1

    .line 228
    .end local v1    # "documentMetadata":Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;
    :cond_2
    const-string v1, "document"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->serializer:Lcom/google/firebase/firestore/bundle/BundleSerializer;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeDocument(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundleDocument;

    move-result-object v1

    .line 230
    .local v1, "document":Lcom/google/firebase/firestore/bundle/BundleDocument;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document loaded: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/firestore/bundle/BundleDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return-object v1

    .line 233
    .end local v1    # "document":Lcom/google/firebase/firestore/bundle/BundleDocument;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot decode unknown Bundle element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/bundle/BundleReader;->abort(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private indexOfOpenBracket()I
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    .line 152
    nop

    .line 157
    iget-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 152
    return v0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_1
    nop

    .line 157
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 155
    const/4 v0, -0x1

    return v0

    .line 157
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 158
    throw v0
.end method

.method private pullMoreData()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 199
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->bundleInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    .line 201
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    iget-object v3, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 202
    .local v0, "bytesRead":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 203
    .local v1, "readSuccess":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 204
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    return v1
.end method

.method private readJsonString(I)Ljava/lang/String;
    .locals 6
    .param p1, "bytesToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    .local v0, "jsonBytes":Ljava/io/ByteArrayOutputStream;
    move v1, p1

    .line 174
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_2

    .line 175
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->pullMoreData()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    const-string v2, "Reached the end of bundle when more data was expected."

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/bundle/BundleReader;->abort(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 181
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 182
    .local v2, "read":I
    iget-object v3, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    iget-object v5, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 183
    iget-object v3, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    sub-int/2addr v1, v2

    .line 186
    .end local v2    # "read":I
    goto :goto_0

    .line 188
    :cond_2
    sget-object v2, Lcom/google/firebase/firestore/bundle/BundleReader;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readLengthPrefix()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    nop

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->indexOfOpenBracket()I

    move-result v0

    move v1, v0

    .local v1, "nextOpenBracket":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->pullMoreData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    nop

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_2
    if-eq v1, v2, :cond_3

    .line 141
    new-array v0, v1, [B

    .line 142
    .local v0, "b":[B
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 143
    sget-object v2, Lcom/google/firebase/firestore/bundle/BundleReader;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 138
    .end local v0    # "b":[B
    :cond_3
    const-string v0, "Reached the end of bundle when a length string is expected."

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/bundle/BundleReader;->abort(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private readNextElement()Lcom/google/firebase/firestore/bundle/BundleElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->readLengthPrefix()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "lengthPrefix":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "jsonStringByteCount":I
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/bundle/BundleReader;->readJsonString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "json":Ljava/lang/String;
    iget-wide v3, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->bytesRead:J

    sget-object v5, Lcom/google/firebase/firestore/bundle/BundleReader;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->bytesRead:J

    .line 111
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/bundle/BundleReader;->decodeBundleElement(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/BundleElement;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->bundleInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 91
    return-void
.end method

.method public getBundleMetadata()Lcom/google/firebase/firestore/bundle/BundleMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->metadata:Lcom/google/firebase/firestore/bundle/BundleMetadata;

    if-eqz v0, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->readNextElement()Lcom/google/firebase/firestore/bundle/BundleElement;

    move-result-object v0

    .line 63
    .local v0, "element":Lcom/google/firebase/firestore/bundle/BundleElement;
    instance-of v1, v0, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    iput-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->metadata:Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->bytesRead:J

    .line 70
    return-object v1

    .line 64
    :cond_1
    const-string v1, "Expected first element in bundle to be a metadata object"

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/bundle/BundleReader;->abort(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getBytesRead()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/google/firebase/firestore/bundle/BundleReader;->bytesRead:J

    return-wide v0
.end method

.method public getNextElement()Lcom/google/firebase/firestore/bundle/BundleElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->getBundleMetadata()Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 81
    invoke-direct {p0}, Lcom/google/firebase/firestore/bundle/BundleReader;->readNextElement()Lcom/google/firebase/firestore/bundle/BundleElement;

    move-result-object v0

    return-object v0
.end method
