Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8741B187D
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Apr 2020 23:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uvk/CSJOGheXrVo3h14Gzxqe8vMHAwjIym56lLXZHpc=; b=pjudek26EY3XaE
	p202sTnsDG3kTYTd50SwCvPw8kDVoMYa8tIyu6ua7c+XGDdqs4ZonFP7SCENSI4+lk2AlAcyrdNA+
	s61bhkNX4fC/w3Ph3/DO4JrpYhAgDYNLf9TFNG5qrtlq7xZaDa+hI3zJTGvPl983l/NT09o0xCGXc
	WfN93nGbA9w2fjZkvEvLwINLuUD6KgbfQHE9CgffgxBQbW7jJ0kNI3oQtzfWXoob+ZM/2R+oZhiJe
	5dvFAJqF9qjF1d6f2CWB7VxAJdJ4dUPudDCIwVF0hdw0LbS6FN1bZ1iRr5+4ih7tbgx5tzA2gRwY7
	Xfijqy23Rnn7wjlN9WNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQe0t-0000bk-47; Mon, 20 Apr 2020 21:31:35 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQe0q-0000as-MY; Mon, 20 Apr 2020 21:31:33 +0000
Received: by mail-oi1-f194.google.com with SMTP id k133so10183540oih.12;
 Mon, 20 Apr 2020 14:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xCbMSBWE/K7CMTFoStyxNkJaPmhk/SFie0hTZQJVUuE=;
 b=lvQkZhd4s073R+9rhjCjQE3erWjzhM3KxunZihOUTGWPpiWfYiu8kVZ8oua3nVrrBH
 dN2Sp4SJYnKDBLKLqp7q55/dBPHu+dRSZq+J7Dzzxoau3vELsnnkKxZQ2QNiBrN+zSB2
 OF9whxii53DpZodQGFrzP6/TY6UW4wFL0tGdP5HSEiNgTMsIAsLkx/+vkMjeH6+bR6fu
 t6dV8ON2s9vrE8LS88R/PVsxapl9G+dOKNcq9pk4OhD17WiSBWvqqXZ5LfBsOS4m7DXP
 C6f8+foquWFDZBZesPAEAN/nswLdH8d3q6LylppjRlJ1khIadjISgd3HQg1vwmUoJ/Jk
 HTcA==
X-Gm-Message-State: AGi0PuZGDH5bVTqZWzafAoGwepPXzOumvxCxu2NS4/vDWNPES21nqZ5D
 JkWX0Wt8LFtE8qVRNwASVA==
X-Google-Smtp-Source: APiQypKp/aMom3WcZIgx4KD9/tZ1PBp+icqSBiPeREh6uL2GtZ7nUmS6xX3EHcojP7gq2hudxYyZ2A==
X-Received: by 2002:aca:4155:: with SMTP id o82mr1118364oia.16.1587418291457; 
 Mon, 20 Apr 2020 14:31:31 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s73sm171791oih.14.2020.04.20.14.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:31:30 -0700 (PDT)
Received: (nullmailer pid 22338 invoked by uid 1000);
 Mon, 20 Apr 2020 21:31:29 -0000
Date: Mon, 20 Apr 2020 16:31:29 -0500
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v15 2/3] dt-bindings: display: mediatek: convert the
 document format from txt to yaml
Message-ID: <20200420213129.GA22262@bogus>
References: <20200415011319.25559-1-jitao.shi@mediatek.com>
 <20200415011319.25559-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415011319.25559-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_143132_736201_C5A0EA26 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Wed, 15 Apr 2020 09:13:18 +0800, Jitao Shi wrote:
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,dpi.txt     | 42 ----------
>  .../bindings/display/mediatek/mediatek,dpi.yaml    | 97 ++++++++++++++++++++++
>  2 files changed, 97 insertions(+), 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
