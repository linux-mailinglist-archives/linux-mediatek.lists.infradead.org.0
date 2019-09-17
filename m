Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A596EB55DC
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 21:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtcQLWyb/QwLKDLTHIeS9+kBIa7fBSwuIOcZuSBUoPc=; b=cYWmUGVPvqoVkB
	Z+pCVyIL8COetIsFlogv7tuqcCsHiGfZMlWX3/ixkuHgwYQ9iSktOBAe6akKH2kwJfx4OUIl+MQsA
	/TGvey7f6136pkc7e8m71nOCnU/T21Trm4jKV6IyVtt0w/TpAaq2Hn2lO/RepPD5J2lWijx9ptBeX
	wu2DWpZ+ZqhO7N9EmETn93Jn0tZcFExh8fcNk/ao40HMX+D2wkKqPF+k9DkzQdCV9xvVRilf7ODDI
	TvUYnvA4N39miR6mJIcK1/d3rlLDHZdo61g7oH2mx6fPJt1bCaEtoywnPltc0XZbNylAsPcuRxh8A
	LqTP1zLiq4dctSeJiHpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAIiX-0005nD-VB; Tue, 17 Sep 2019 19:00:50 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAIiQ-0005mQ-7Z; Tue, 17 Sep 2019 19:00:45 +0000
Received: by mail-oi1-f195.google.com with SMTP id i185so3812042oif.9;
 Tue, 17 Sep 2019 12:00:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KMFOJxSDmNk+ep/uvhUIXWKVpfvuQM6FW+WcSok7HNU=;
 b=aYO/q9qD3OwiTovF0xHHax/3n2EfKQBLSVOxnoQlpLNdZg1OIRB/4huKB4aN9BFDaF
 0MY00ZRyO8wBSCVtLB/Louez5bIi6eyQuHbpPR1wV1/lrA4vyFg5QxmVnp9g0JXTC3S1
 yvLpdzplMz3IL2qdFK4HzbloJlsop2ZlXcc5at9RKtYgDLVoi61q7xVvQI37ipP/h6Pn
 CclYFEeoJdRC2bkLHWG2AdJS6jvzCrEThHDd1W+BiRSlVCWVu66VcCoHz1Mpuptr7wwf
 uyWT+COijh3GefqG5SWaqlQRNs7HR75nGzqIJe090sLjOqpKJoh/iRL52RUlDxASPGEO
 RUAA==
X-Gm-Message-State: APjAAAVQyvbFujPXVIsFJtp9juraP4/T85Z9bIxFCOjl+4mmiCijPCEM
 oREIJ7oVzXv9c+vNafa1OcV7cNQ=
X-Google-Smtp-Source: APXvYqyPBAleJPJJgi/jVRhyloWkqDSvUnLKGRJvMyJRlfhxoL2QGkUKIRHmQ4g6WVCXP1CtVtoeVQ==
X-Received: by 2002:aca:cd58:: with SMTP id d85mr4702733oig.119.1568746841223; 
 Tue, 17 Sep 2019 12:00:41 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t8sm928029oic.46.2019.09.17.12.00.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:00:40 -0700 (PDT)
Date: Tue, 17 Sep 2019 14:00:39 -0500
From: Rob Herring <robh@kernel.org>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
Subject: Re: [RFC PATCH V3 1/3] dt-bindings: mt8183: Added FD dt-bindings
Message-ID: <20190917190039.GA6553@bogus>
References: <20190906101125.3784-1-Jerry-Ch.chen@mediatek.com>
 <20190906101125.3784-2-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906101125.3784-2-Jerry-Ch.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_120042_267874_FA632C07 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 po-yang.huang@mediatek.com, Jerry-ch Chen <jerry-ch.chen@mediatek.com>,
 jungo.lin@mediatek.com, hans.verkuil@cisco.com, ck.hu@mediatek.com,
 frederic.chen@mediatek.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, tfiga@chromium.org, christie.yu@mediatek.com,
 zwisler@chromium.org, lkml@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 18:11:23 +0800, Jerry-ch Chen wrote:
> From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> This patch adds DT binding documentation for the Face Detection (FD)
> unit of the Mediatek's mt8183 SoC.
> 
> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-fd.txt     | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
