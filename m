Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4005C1D02D
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 21:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGxa+0Qfh7ci7c76enZd9ynvm6ux+RGvG6RBQ1Ly94k=; b=jEAX8VjXLU4vnR
	4U3p/1yEYz7pZmyAl+t5/A6/0m4h1lHN3yeOt/2LbEPlB3eN52Frkof9JiuLYWpu3k3VwBEqbYNRc
	aDS8W6vkkK2ImVCY9CkkRJ3KSvwMoO0OQx12YIvKu7247FpVGixAFtO9XCOBlcp8piIYgFFgyj7i2
	1EHs+Xdmh/VlxeYDfNQfgFpf/wx3tZZccmmlT23Vs7QFwEgQU4MF9yCT7P8rs7IZndGoWxfe5BIz/
	NyLDts/T0mOnxE8YV+G83F+xRZb9GShmEjWQIYcWtsP9lK+KVo6MuNydOAl3kOTY2pwxsouNb/zDu
	jL9FgQSZbtC2uGdX256g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdRz-0002SK-5z; Tue, 14 May 2019 19:50:59 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdRv-0002Rw-IN; Tue, 14 May 2019 19:50:57 +0000
Received: by mail-oi1-f193.google.com with SMTP id r136so31635oie.7;
 Tue, 14 May 2019 12:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R9p+114iMCLKbcYWbrKx2t0zEed2I4kEC9Y3wCX+xVY=;
 b=P1TTmDqNmonNjdBXNsebfJgJoQ/LXzXEDdwCcAtmLUkmmh5xjsYLlYy8nT8Vex2y/5
 WIxNm3AIxC56hlaewoVTwtXCkGHH+zH4F3MVnNd3Xkz/I8ZXV+7yeryXXc/d8qn+vyFR
 8qxEotv+0OAyT+m378T4HQIKuqDT6fidjKXM6v9M8Cz0QQzJghOTYmkhvP6WI79zYV/8
 HnH+0bJ6IODh1kbJOdmx/f4otFPoo0aB8sjideCt36GN9d5LmkaCHOQgkFdp2NUz0zkQ
 T0iOh5xW/ttdcTVXJT05PfOUu35HhIP/H7FZkMueywibJ9nS85EctPOi02eG8b6LKJM9
 pLlA==
X-Gm-Message-State: APjAAAWZayLRrjllGOtF2J4lZfUA+Ac8wrUobX0zM8VlvEtpmF7Juwy4
 gQARzKWQvt5XiLYbA4F91w==
X-Google-Smtp-Source: APXvYqzfUrboeaRa/tO2hasvJV3+3PJ668BmH2CS3HSxQeZZDMR4XkKbC/GW2Tv/2mi4yURpj3Heow==
X-Received: by 2002:aca:be46:: with SMTP id o67mr4052966oif.92.1557863454007; 
 Tue, 14 May 2019 12:50:54 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n95sm4498183otn.73.2019.05.14.12.50.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 12:50:53 -0700 (PDT)
Date: Tue, 14 May 2019 14:50:52 -0500
From: Rob Herring <robh@kernel.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC,V2,01/11] dt-bindings: mt8183: Add binding for ISP Pass 1
 reserved memory
Message-ID: <20190514195052.GA3314@bogus>
References: <jungo.lin@mediatek.com>
 <20190510015755.51495-2-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510015755.51495-2-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_125055_606355_A82DE92E 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, hans.verkuil@cisco.com,
 frederic.chen@mediatek.com, seraph.huang@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 09:57:47AM +0800, Jungo Lin wrote:
> This patch adds the binding for describing the reserved
> shared memory used to exchange ISP configuration and tuning
> data between the co-processor and Pass 1 (P1) unit of the
> camera ISP system on Mediatek SoCs.
> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
>  .../mediatek,reserve-memory-cam-smem.txt      | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-cam-smem.txt

See my comments on the other 2 camera related reserved-memory bindings.

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
