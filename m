Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC47412EC5
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 15:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6SNh36JPQECZbs2csKIVHlvGyebmKKRlt1hjPKPb/2s=; b=u2ACGdBgrN7nEt
	aa/MWvrXrJmw8/7AUQEAdVj2FA0lnvchVmZrdSMRoCbiWHby7bLmnQMKEvJyu24QOU/sgg+xVbw/e
	7DbyIiuIgadsD8W7RO61fiWrEWvvuYN3DS0O5aGzbKnptSz8VvZcqp4LLpfk0ZVEnDarf3/doek6s
	kYMuV56qkLp6Bx3iSk6NlT9o2etHRNs0L7bD1GCXHKWZaEI2j+LOLJ5cv7ERis6Z7kRvo0xHz+S1R
	MCRh7nVduptwjWbGHYKvAkpFrZ34zUqVUQlll0xctHjfW+EG88CHT5VyOFWCL/0XEvn/b2KYD72XN
	jazjO9nf/s7hcruialMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXty-0006pM-4d; Fri, 03 May 2019 13:06:58 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXtu-0006p1-Pd
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 13:06:56 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43CxUHU125073;
 Fri, 3 May 2019 13:06:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=D6HB5yRdvk3NaFgeMVgY8daP3DsI56SG4+eJtdNEkRk=;
 b=T0ux1hIidPE1zxxBPVh92Myau69z90r1aY862GRRmF8i7z2Wzb5NG0sKZLza/SDu8fKf
 kgr5WUvjd/EDXzLQ2qRP46UQ9sijfXLwPI8ZOcLYzWWBHBxuL0tQPYk1IJ/wAEn3HoMd
 50fZZgigoRJ1ORtDyAoJaMxCYwebha++cVJi4qPEPVk8wpx5SBrslNP/K0dAPbYp3Q/4
 Vqvaz3lUT4vVM5ddWxGmYYEP9oTnO2ChAO7Q1ecRbg1mwiTVsf3ilatTmkZSV7+Hfi6L
 3u/jIv4Gyy2KA9zsWkqVT8qtr+6wHlqOWxBl59w+/NWVZL71BLI4zqbdE2vXbiLdfxDz 8g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2s6xhypk7c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 13:06:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43D5hFY161168;
 Fri, 3 May 2019 13:06:52 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2s7p8aat9j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 13:06:52 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x43D6oV6029146;
 Fri, 3 May 2019 13:06:51 GMT
Received: from mwanda (/196.104.111.181)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 May 2019 06:06:50 -0700
Date: Fri, 3 May 2019 16:06:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ryder.lee@mediatek.com
Subject: [bug report] mt76: add mac80211 driver for MT7615 PCIe-based chipsets
Message-ID: <20190503130642.GH29695@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=454
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905030082
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=486 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905030082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_060654_932829_B2D3E68E 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.6 BIGNUM_EMAILS          Lots of email addresses/leads
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello Ryder Lee,

This is a semi-automatic email about new static checker warnings.

The patch 04b8e65922f6: "mt76: add mac80211 driver for MT7615 
PCIe-based chipsets" from Apr 1, 2019, leads to the following Smatch 
complaint:

    drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:1012 mt7615_mcu_set_wtbl_key()
    error: we previously assumed 'key' could be null (see line 1008)

drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
  1007			cipher = mt7615_get_key_info(key, wtbl_sec_key.key_material);
  1008			if (cipher == MT_CIPHER_NONE && key)
                                                        ^^^
This check doesn't make much sense.  Do you want to just remove it?

  1009				return -EOPNOTSUPP;
  1010	
  1011			wtbl_sec_key.cipher_id = cipher;
  1012			wtbl_sec_key.key_id = key->keyidx;
                                              ^^^^^^^^^^^
  1013			wtbl_sec_key.key_len = key->keylen;
  1014		} else {

regards,
dan carpenter

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
