Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6775C74062
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 22:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neplcFqA7DvyCNCusU3oDzPYv5RbVNNSLSNw3czNZlE=; b=UztnxV7GWutRAC
	ne3E+2LGT348tYUAbYspvhHiWs0lnAZtXhS7VHMJRGWolHoxxFHn10xgbBObPiCz03bmNlWYSWzwu
	wFU99EATiU5gwhYDwuPojEulqzHy+MYj5MaHrypqTvZm2MPYJXK2fSRpoRnb3ShhhSk+HZJMD/Dot
	dkEFh6I+/1QCY1XY3Jz8mZrHiqnXiXEhLlVX1PvvmxU0gwsapKw4jZuqaAVq6EjzdKHZUCzP+2E55
	f92RuBFooEzX/psnU8TIMPSIVtS2jhByoQDFIVfrds1jSTZAXWTtX3Vak6gCKJ0Aop9xbb6k7G1em
	Cp+yicQJM5zvxad1wVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqO9t-0005nv-14; Wed, 24 Jul 2019 20:46:45 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqO9X-0005ah-2W; Wed, 24 Jul 2019 20:46:24 +0000
Received: by mail-io1-f68.google.com with SMTP id j6so17347696ioa.5;
 Wed, 24 Jul 2019 13:46:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i/sPIhXsS6XIgPtbsRxAmrculmKk8MrSIf4t2TOmssc=;
 b=eypRdAQ8ANGKVoJcyv9xGDeVT28ybb9VdVmTPL5327WH3mTAJ/MeH8SnwMHtH3tcdD
 1fbJ59puRpBVH+TtTvPhqUV1QA50/Hjw/g2eQjTi9oagZ87JRLsd2BN2wXP1Ri60qEXu
 BWNyQXOs9o5sigHpwv1hCE3XfqZNafPy8Aq/G1EeBbQX7mYADSVVJzvpm1VmHSASBxjD
 3Vcul/HYOezmN0CsHp2fFQ5nqsQpz7qpIVwICHm1ZWCqIPt1oAIzoIegT0P/7NYXE1Iu
 hnJwmfhkO3sFBpmg4yZuDB1q8uz0i+8pNUDDWcMmff/MaABCY1Iv+skEery94fQisbE9
 FBpg==
X-Gm-Message-State: APjAAAUDC1Lk7xx3ZMspvhEZlJrYt21YD5cZrauvoGAdm9KA2lFZfcPE
 scikaeG54uczD3pyYXIURXZdRug=
X-Google-Smtp-Source: APXvYqw9E2+Xf5qC0L6WngTKBG5qk+vwpnwnE3u6JWu5EifnJzjQKu0ViuEr6sIw7lDkl19v0HzYpQ==
X-Received: by 2002:a02:b90e:: with SMTP id v14mr49286701jan.122.1564001182328; 
 Wed, 24 Jul 2019 13:46:22 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id x13sm35133832ioj.18.2019.07.24.13.46.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:46:21 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:46:21 -0600
From: Rob Herring <robh@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v6 4/8] clk: mediatek: add mt6765 clock IDs
Message-ID: <20190724204621.GA13063@bogus>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
 <1562924653-10056-5-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562924653-10056-5-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_134623_117612_46B904DE 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Sean Wang <sean.wang@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Macpaul Lin <macpaul.lin@mediatek.com>,
 linux-serial@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019 17:43:40 +0800, Macpaul Lin wrote:
> From: Mars Cheng <mars.cheng@mediatek.com>
> 
> Add MT6765 clock dt-bindings, include topckgen, apmixedsys,
> infracfg, mcucfg and subsystem clocks.
> 
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> Signed-off-by: Owen Chen <owen.chen@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  include/dt-bindings/clock/mt6765-clk.h | 313 +++++++++++++++++++++++++
>  1 file changed, 313 insertions(+)
>  create mode 100644 include/dt-bindings/clock/mt6765-clk.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
