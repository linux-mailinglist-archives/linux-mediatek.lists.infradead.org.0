Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93CE1724CA
	for <lists+linux-mediatek@lfdr.de>; Thu, 27 Feb 2020 18:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dm2iL9jxZ3nleMF6aWy0GJwo43Y2NR6s3cevHtWwiK4=; b=BgYJuUrNfDlhWL
	pWQbCzA+gtHKQUUPI9VG48uW+ysB1+bQ493YUIUkf+9zUF0GzIi8GyZiNSNtvxjbWOLnvqGweomZG
	NWdPfSX7v//W5WDazFwXeQHlY3vgw4Y9ptNCxAl+geA3bCCz34wm3sFoVRbq1XmwiE5LaZsiq8nAR
	PtVRkmWGscwSNqex7lEFBnxsvZ+mMMB5yOJbjWiLuZSzZMa63+RA5pBTY15D2+jM4LBJHOM1wcNMq
	vspweR7BpyZJ1IuYEV7vBX7bvWwbalZHfoqMJv3s6nPc0hiSVOIgTssZN8TM5/7DkNb5Lko9XIkcD
	33zrON6+qVqwlt0//Nlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MlD-0005Eb-Ha; Thu, 27 Feb 2020 17:15:43 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MlA-0005Du-CA; Thu, 27 Feb 2020 17:15:41 +0000
Received: by mail-oi1-f196.google.com with SMTP id l136so4084101oig.1;
 Thu, 27 Feb 2020 09:15:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E2s4W1sTyFGQwdK13Lex3fESSAYc6q6IIVmN459eOYE=;
 b=Rm3u947V1BB5P12Lh3R30tp6meSaEaVeBNoX9pIXBPXAz+fAhjJFFsOsvarVQ60ZGr
 NBN/wauOmq/t6fweIGhW9sLE/JdR+WxFZlZN8IdVYdT779nCvEI78bPOH5AkKmHpYf/Q
 +2KD9kM4T5u9BMIkxstP2OeZsmf3B48wbl/i+vKgO/uJywEqiKUbOl7eVYHt7W8j66a9
 yw6zvHvQea/ajirUnp951NLkfRKsa+bCkI8V7d0weGoiFBYMARagTuo5lzHaLlkqs00g
 j5ZwQW6oq9bFB5eVI/gi9HLMPs+E7k4I8FDNSAJld8FvbGABmwBOc1CyV4FTAl5ABB6h
 RU4A==
X-Gm-Message-State: APjAAAUFFiuoLNrK+Mky5VPGvRDhPdy+P8Xk1hQ2qEBzr9+qruStzg2A
 lfeGSUva+Mlz+EP17ASYcw==
X-Google-Smtp-Source: APXvYqzPY/x9+leT8mGPZrSZwA6cJInd+YOsSLBRuvxwItyWmhZNQAKo6BVOMNji/xfmQgysRVoyAQ==
X-Received: by 2002:aca:b9c2:: with SMTP id j185mr59225oif.112.1582823739377; 
 Thu, 27 Feb 2020 09:15:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t9sm2108218otm.76.2020.02.27.09.15.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 09:15:37 -0800 (PST)
Received: (nullmailer pid 14499 invoked by uid 1000);
 Thu, 27 Feb 2020 17:15:36 -0000
Date: Thu, 27 Feb 2020 11:15:36 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v9 1/5] dt-bindings: media: add pclk-sample dual edge
 property
Message-ID: <20200227171536.GA14418@bogus>
References: <20200226053238.31646-1-jitao.shi@mediatek.com>
 <20200226053238.31646-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226053238.31646-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_091540_421948_6FC89F91 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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

On Wed, 26 Feb 2020 13:32:34 +0800, Jitao Shi wrote:
> Some chips's sample mode are rising, falling and dual edge (both
> falling and rising edge).
> Extern the pclk-sample property to support dual edge.
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  Documentation/devicetree/bindings/media/video-interfaces.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
