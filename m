Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB859F0C9
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 18:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJ8//Yt2J++mnWRI7aK8ealMB094IVoh1o+SriWFKzQ=; b=LFVUz2Ya2FOlTs
	FstTcPk9itpFsCh8H3hi+gcBreymalSPbACk1sBFDOzLtSrtLJlWWKVbcEJiDf+GP/aRZJU44HRKH
	UbP2uEdG/v902PWGymhWgFP8ovWlVl+Aec+4RX3hPIUE6+E5lMnqnzhpAg8VsvFvmfOgtCtuyD4jo
	AbtLAip7yGSb1xi2k5hsqPNPzppUi/3hQq1GMQxjh86EzkeFZDERw4MEblH6pLZpGp7Jq/t1eLhaC
	wj6UnJFU+EY+cCJETuoeW7V7u+iFcWQfcObrvPOxl0h+C6nDLSh56ca9J0GrjtDFx9NdgDWymGD/N
	EDWTc/J6ZiQPrMsQClfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eiW-0004To-E3; Tue, 27 Aug 2019 16:53:12 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eiT-0004TK-E0
 for linux-mediatek@lists.infradead.org; Tue, 27 Aug 2019 16:53:10 +0000
Received: by mail-ot1-f66.google.com with SMTP id o101so19303794ota.8
 for <linux-mediatek@lists.infradead.org>; Tue, 27 Aug 2019 09:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tXZ+L1izx3v6iUiXs7Bmef3akgnqSl4UHvWXUS90ess=;
 b=fEnFaj2GUZQ3G4xMkQx2fhciNkU5CuIpzW7R46R7aiiUN78ygxQ7/Ii/eK9mlXR+YK
 G0GoKdThlnp6Wrb2yu69EteuKPW30X/CMpAl7wxLCKGdF5S+mGStyZLo3WbCZC8ThyHu
 C8mLaW0dXqiy+1oSgBz0h77Ijq/BxkyrML+JLpVzP4uNiP2ej58tkflfnPexChODgR0I
 dLAEuiUTj67hF/O8tjXaW8YAHeBNuSP1f924lGqsrR+sEZvyYSfKGRRF7bkCOm39ubKt
 wCjS6kvHEm8A1DtogHaGYbbWqes6lx7WReAZDXiXt+lXrhl+6xwCokKGuiE7t1j6+OjL
 oAsA==
X-Gm-Message-State: APjAAAU7YNqkPReY8nlqO+sSlk/ErtLQrDdQQs3wHA/ksun7iEKfDgeI
 Zv+ggzB7QTfUlmDSyaztdQ==
X-Google-Smtp-Source: APXvYqwqaZqJc0EiQWQhXT7audNujzC7IOtWcqZLwMXAJYa90ehz6JXD56+/jyz25pglcwAaTH3NUg==
X-Received: by 2002:a05:6830:4d6:: with SMTP id
 s22mr4181259otd.295.1566924788324; 
 Tue, 27 Aug 2019 09:53:08 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a16sm4318199oid.26.2019.08.27.09.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:53:07 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:53:07 -0500
From: Rob Herring <robh@kernel.org>
To: Mars Cheng <mars.cheng@mediatek.com>
Subject: Re: [PATCH v2 09/11] clk: mediatek: Add dt-bindings for MT6779 clocks
Message-ID: <20190827165307.GA29782@bogus>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-10-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566206502-4347-10-git-send-email-mars.cheng@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_095309_471524_578515D7 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Linus Walleij <linus.walleij@linaro.org>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 17:21:40 +0800, Mars Cheng wrote:
> From: mtk01761 <wendell.lin@mediatek.com>
> 
> Add MT6779 clock dt-bindings, include topckgen, apmixedsys,
> infracfg, and subsystem clocks.
> 
> Signed-off-by: mtk01761 <wendell.lin@mediatek.com>
> ---
>  include/dt-bindings/clock/mt6779-clk.h |  436 ++++++++++++++++++++++++++++++++
>  1 file changed, 436 insertions(+)
>  create mode 100644 include/dt-bindings/clock/mt6779-clk.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
