Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B923017682A
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Mar 2020 00:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQAVp81ZXbkBucLDnGCE/Pa2K22frzFf/fQMWa2n2vc=; b=PbMqNMSqwt2nx8
	+bskXTy1fnRQw1MQXWA8Nl3K4cn2I7htLdFJl3gPELJLbnnZZ1u7nDlWIbhXVBT98rYe4hpELrmdw
	hCreV+pQhPeNiEm3CdZQyeErrPj2elSCeA5C1ApXvz+MeXKcLpaFy6i+E5154YbIRUsb32kMLcGEF
	7legAa0iQ1HfU1K98RxAFNHCtY9vMWqnwSPs4sHUIHg5J/8Hyoh+BiokfXtWmb93JIKcrwgAgSpw9
	Zvb7Y83weSGsLDNJVsFnBduY6xCTMJtLd0DtMOvhpy49JOIEVSABla18gQl4Jt4wWtLsM0GIbAYS6
	9TXF6LwqJdFiOIUPVqxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uUp-0007uL-73; Mon, 02 Mar 2020 23:29:11 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uUm-0007tR-Ap; Mon, 02 Mar 2020 23:29:09 +0000
Received: by mail-ot1-f67.google.com with SMTP id x97so1143321ota.6;
 Mon, 02 Mar 2020 15:29:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NS6hER+VVAnGHZWWvDFXB42+gq+sW8+/QdX9Qb/AI7g=;
 b=pITZx6Htv1JuT5+z+6IZj2Fz43zB/qQR6B6Fdfx+ZWkCGQ+ziT81WdaHinhKUMDbok
 pPPUMNPcE2JTIs5Uko4oedwWJgtSBnUVLLAhOyz9+Vp5OiEDu5XpJ9eeERqbWpiDLf5q
 8gvmxxVFV64UgB/zOMF7xZ4mzWfwiEJhjtnpLUaErnJwFNb6PAA840FifEltR/ykFvlf
 pHW4NfQUhF0ZI/miUyRRSe6hKqP5b+Pe6FW6k7prTx3kd/U/XaBuqbuyBu79zCMa6wb5
 JvcGClkWjP23yfBz9jcNgn3Q4dO/G+Ot0POR1CD7AcNOcXbYtNTsyC6uZ50MpKg7FFtK
 SmxA==
X-Gm-Message-State: ANhLgQ0t6KWQX+llpGP9iMhttejXmflR/IYYl0ZTPYv6kRDMiffHMH7C
 wdSf4R2vFc2CBTYwAZCTjw==
X-Google-Smtp-Source: ADFU+vsUt55eBcvqYE0rSpf9oRYffX/uXs52slphFkLEkbKH37ioBPr+eiRmTNq+O9nX9CF5FnnZAQ==
X-Received: by 2002:a9d:6446:: with SMTP id m6mr1231470otl.122.1583191745239; 
 Mon, 02 Mar 2020 15:29:05 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m69sm7061077otc.78.2020.03.02.15.29.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:29:04 -0800 (PST)
Received: (nullmailer pid 4498 invoked by uid 1000);
 Mon, 02 Mar 2020 23:29:03 -0000
Date: Mon, 2 Mar 2020 17:29:03 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v11 2/6] dt-bindings: display: mediatek: control dpi pins
 mode to avoid leakage
Message-ID: <20200302232903.GA4460@bogus>
References: <20200228081441.88179-1-jitao.shi@mediatek.com>
 <20200228081441.88179-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228081441.88179-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_152908_372799_365A93A2 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, bibby.hsieh@mediatek.com,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 16:14:37 +0800, Jitao Shi wrote:
> Add property "pinctrl-names" to swap pin mode between gpio and dpi mode. Set
> the dpi pins to gpio mode and output-low to avoid leakage current when dpi
> disabled.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt  | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
