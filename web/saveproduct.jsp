
<%@page import="projbeans.products"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Add Product</title>
    </head>
    <body>
        <%String p_id = "", subcatcode = "", m_id = "", bcode = "", p_name = "", p_price = "", p_description = "", p_status = "", p_image = "", p_image1 = "", p_quantity = "";

            ServletContext x = this.getServletContext();
            String path = x.getRealPath("/uploadedimages");
            //System.out.println("path " + path);
            DiskFileUpload p = new DiskFileUpload();
            List q = p.parseRequest(request);

            Iterator z = q.iterator();
            while (z.hasNext()) {
                FileItem f = (FileItem) z.next();

                if (f.isFormField() == true) {
                    //non-file data

                    String h = f.getFieldName();
                    String data = f.getString();
                    if (h.equalsIgnoreCase("subcatcode")) {
                        subcatcode = data;
                    } else if (h.equalsIgnoreCase("m_id")) {
                        m_id = data;
                    } else if (h.equalsIgnoreCase("bcode")) {
                        bcode = data;
                    } else if (h.equalsIgnoreCase("p_name")) {
                        p_name = data;
                    } else if (h.equalsIgnoreCase("p_price")) {
                        p_price = data;
                    } else if (h.equalsIgnoreCase("p_description")) {
                        p_description = data;
                    } else if (h.equalsIgnoreCase("p_status")) {
                        p_status = data;
                    } else if (h.equalsIgnoreCase("p_quantity")) {
                        p_quantity = data;
                    }

                } else {
                    //file data
                    String filename = f.getName();
                    String filename1 = f.getName();
                    if (filename != null && filename.length() > 0 && filename1 != null && filename1.length() > 0) {
                        File g = new File(filename);
                        File g1 = new File(filename1);
                        filename = g.getName();
                        filename1 = g1.getName();
                        //creating unique file name
                        long w = System.currentTimeMillis();
                        filename = w + filename;
                        filename1 = w + filename1;

                        //upload file
                        File t = new File(path, filename);
                        f.write(t);
                        if (f.getFieldName().equals("p_image")) {
                            p_image = filename;
                        } else if (f.getFieldName().equals("p_image1")) {
                            p_image1 = filename;
                        }

                    }

                }
            }

            if (p_image == null || p_image.length() == 0) {
                p_image = "blank.jpg";
            }

            if (p_image1 == null || p_image1.length() == 0) {
                p_image1 = "blank.jpg";
            }
            //send data to bean
            products s = new products();
            s.setP_id(p_id);
            s.setSubcatcode(subcatcode);
            s.setM_id(m_id);
            s.setBcode(bcode);
            s.setP_name(p_name);
            s.setP_price(p_price);
            s.setP_description(p_description);
            s.setP_status(p_status);
            s.setP_image(p_image);
            s.setP_image1(p_image1);
            s.setP_quantity(p_quantity);
            int count = s.save();
            if (count > 0) {
                response.sendRedirect("showproduct.jsp");
            } else {
                out.println("Data not saved");
                response.sendRedirect("addproduct.jsp");
            }
        %>
    </body>
</html>
